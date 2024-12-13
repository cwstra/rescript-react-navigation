#!/usr/bin/env stack
{- stack script --resolver lts-21.25
   --package bytestring
   --package parsec
   --package text
-}
import Control.Applicative (liftA2)
import Control.Monad
import qualified Data.ByteString as B
import Data.Char ( isAlphaNum, isDigit, isLower )
import qualified Data.Text as T
import qualified Data.Text.Encoding as TE
import qualified Data.Text.IO as TIO
import System.Environment
import System.IO
import Text.Parsec
import Text.Parsec.Text (Parser)
import Text.Parsec.Char ()
import Text.Parsec.Combinator (between, sepBy1)
import Text.Parsec.Token (GenTokenParser(whiteSpace))

whiteSpaceChars :: [Char]
whiteSpaceChars = " \n\t"

whitespace :: Parser ()
whitespace = void $ many $ oneOf whiteSpaceChars

lexeme :: Parser a -> Parser a
lexeme p = p <* whitespace

quote :: Parser Char
quote = char '"'

unquotedWord :: Parser T.Text
unquotedWord = liftA2 (\fst rst -> T.pack $ fst : rst) (letter <|> char '_') (many (alphaNum <|> char '_'))

quotedWord :: Parser T.Text
quotedWord = fmap T.pack $ between quote quote $ many $ noneOf "\""

polyVariant :: Parser T.Text
polyVariant = lexeme $ char '#' >> (unquotedWord <|> quotedWord)

polyVariantArray :: Parser [T.Text]
polyVariantArray = between (lexeme $ char '[') (lexeme $ char ']') inner
  where
    bar = lexeme $ char '|'
    inner = optional bar >> splitByBar
    splitByBar = sepBy1 polyVariant bar

data PolyTypeDef = PolyTypeDef
  { defName :: !T.Text
  , values :: ![T.Text]
  }

polyTypeDef :: Parser PolyTypeDef
polyTypeDef =
  liftA2
    PolyTypeDef
    (lexeme (string "type") >> lexeme unquotedWord)
    (lexeme (char '=') >> polyVariantArray)

data Parsed = ParsedPoly !PolyTypeDef | ParsedOther !T.Text

(|||) :: (a -> Bool) -> (a -> Bool) -> a -> Bool
(|||) p1 p2 v = p1 v || p2 v

infixr 2 |||

pascalCase :: T.Text -> T.Text
pascalCase str = step str T.empty
  where
    step input output
      | Just (fst, rst) <- T.uncons input,
        isAlphaNum fst,
        (rstWrd, rst) <- T.span (isLower ||| isDigit) rst =
          step rst $ T.concat [output, T.toUpper (T.cons fst T.empty), rstWrd]
      | Just (fst, rst) <- T.uncons input =
          step (T.dropWhile (not . isAlphaNum) rst) output
      | otherwise = output

printTypeDef :: PolyTypeDef -> T.Text
printTypeDef (PolyTypeDef {defName, values}) =
  T.intercalate (T.pack " ") $
    [ T.pack "type"
    , defName
    , T.pack "="
    ] ++ map (\v -> T.concat [T.pack "\n  | @as(\"", v, T.pack "\") ", pascalCase v]) values ++ [T.pack "\n"]

updateFileContents :: T.Text -> T.Text
updateFileContents fileContents = step fileContents T.empty
  where
    step contents output
      | (ws, rest) <- T.span (`elem` " \t") contents
      ,  Right (parsed, rest) <- runParser (liftA2 (,) polyTypeDef getInput) () "" rest
      =  step rest $ T.concat [output, ws, printTypeDef parsed, T.pack "\n"]
      | T.null contents = output
      | (before, rest) <- T.break (=='\n') contents
      , Just (_, rest) <- T.uncons rest
      = step rest $ T.concat [output, before, T.pack "\n"]
      -- |  <- T.break (=='\n')

main :: IO ()
main = do
  args <- getArgs
  case args of
    [] -> putStrLn "Missing file path to update"
    [filePath] -> do
      contents <- TE.decodeUtf8 <$> B.readFile filePath
      TIO.writeFile filePath $ updateFileContents contents
    _ : _ -> putStrLn "Too many arguments"
