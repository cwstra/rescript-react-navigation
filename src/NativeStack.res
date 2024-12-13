// https://reactnavigation.org/docs/native-stack-navigator/

open Core
open Elements
open ReactNative

@module("react-native-screens")
external enableScreens: unit => unit = "enableScreens"

type animation =
  | @as("default") Default
  | @as("fade") Fade
  | @as("fade_from_bottom") FadeFromBottom
  | @as("flip") Flip
  | @as("simple_push") SimplePush
  | @as("slide_from_bottom") SlideFromBottom
  | @as("slide_from_right") SlideFromRight
  | @as("slide_from_left") SlideFromLeft
  | @as("none") None

type animationTypeForReplace =
  | @as("push") Push
  | @as("pop") Pop

type headerBackTitleStyle = {
  fontFamily?: string,
  fontSize?: float,
}

type blurEffect =
  | @as("extraLight") ExtraLight
  | @as("light") Light
  | @as("dark") Dark
  | @as("regular") Regular
  | @as("prominent") Prominent
  | @as("systemUltraThinMaterial") SystemUltraThinMaterial
  | @as("systemThinMaterial") SystemThinMaterial
  | @as("systemMaterial") SystemMaterial
  | @as("systemThickMaterial") SystemThickMaterial
  | @as("systemChromeMaterial") SystemChromeMaterial
  | @as("systemUltraThinMaterialLight") SystemUltraThinMaterialLight
  | @as("systemThinMaterialLight") SystemThinMaterialLight
  | @as("systemMaterialLight") SystemMaterialLight
  | @as("systemThickMaterialLight") SystemThickMaterialLight
  | @as("systemChromeMaterialLight") SystemChromeMaterialLight
  | @as("systemUltraThinMaterialDark") SystemUltraThinMaterialDark
  | @as("systemThinMaterialDark") SystemThinMaterialDark
  | @as("systemMaterialDark") SystemMaterialDark
  | @as("systemThickMaterialDark") SystemThickMaterialDark
  | @as("systemChromeMaterialDark") SystemChromeMaterialDark

type headerLargeStyle = {backgroundColor?: Color.t}

type headerLargeTitleStyle = {
  fontFamily: option<string>,
  fontSize: option<float>,
  color: option<Color.t>,
}

type headerStyle = {backgroundColor?: Color.t}

type headerTitleStyle = {
  fontFamily?: string,
  fontSize?: float,
  fontWeight?: Style.fontWeight,
  color?: Color.t,
}

type presentation =
  | @as("card") Card
  | @as("modal") Modal
  | @as("transparentModal") TransparentModal
  | @as("containedModal") ContainedModal
  | @as("containedTransparentModal") ContainedTransparentModal
  | @as("fullScreenModal") FullScreenModal
  | @as("formSheet") FormSheet

type statusBarStyle =
  | @as("auto") Auto
  | @as("inverted") Inverted
  | @as("light") Light
  | @as("dark") Dark

type statusBarAnimation =
  | @as("fade") Fade
  | @as("none") None
  | @as("slide") Slide

type orientation =
  | @as("default") Default
  | @as("all") All
  | @as("portrait") Portrait
  | @as("portrait_up") PortraitUp
  | @as("portrait_down") PortraitDown
  | @as("landscape") Landscape
  | @as("landscape_left") LandscapeLeft
  | @as("landscape_right") LandscapeRight

type headerTitleAlign =
  | @as("left") Left
  | @as("center") Center

type inputType =
  | @as("text") Text
  | @as("phone") Phone
  | @as("number") Number
  | @as("email") Email

type headerSearchBarOptions = {
  autoCapitalize?: TextInput.autoCapitalize,
  autoFocus?: bool,
  barTintColor?: Color.t,
  cancelButtonText?: string,
  disableBackButtonOverride?: bool,
  hideNavigationBar?: bool,
  hideWhenScrolling?: bool,
  inputType?: inputType,
  obscureBackground?: bool,
  placeholder?: string,
  textColor?: Color.t,
  hintTextColor?: Color.t,
  headerIconColor?: Color.t,
  shouldShowHintSearchIcon?: bool,
  onBlur?: Event.targetEvent => unit,
  onCancelButtonPress?: Event.pressEvent => unit,
  onChangeText?: string => unit,
}

type backOptions = {title?: string}

type gestureDirection =
  | @as("vertical") Vertical
  | @as("horizontal") Horizontal

type rec options = {
  title?: string,
  headerBackButtonMenuEnabled?: bool,
  headerBackVisible?: bool,
  headerBackTitle?: string,
  headerBackTitleVisible?: bool,
  headerBackTitleStyle?: headerBackTitleStyle,
  headerBackImageSource?: string, // TODO
  headerLargeStyle?: headerLargeStyle,
  headerLargeTitle?: bool,
  headerLargeTitleShadowVisible?: bool,
  headerLargeTitleStyle?: headerLargeTitleStyle,
  headerShown?: bool,
  headerStyle?: headerStyle,
  headerShadowVisible?: bool,
  headerTransparent?: bool,
  headerBlurEffect?: blurEffect,
  headerBackground?: Header.headerBackgroundOptions => React.element,
  headerTintColor?: Color.t,
  headerLeft?: Header.headerLeftProps => React.element,
  headerRight?: Header.headerRightProps => React.element,
  headerTitle?: Header.headerTitle,
  headerTitleAlign?: headerTitleAlign,
  headerTitleStyle?: headerTitleStyle,
  headerSearchBarOptions?: headerSearchBarOptions,
  header?: headerParams => React.element,
  statusBarAnimation?: statusBarAnimation,
  statusBarHidden?: bool,
  statusBarStyle?: statusBarStyle,
  statusBarColor?: Color.t,
  statusBarTranslucent?: bool,
  contentStyle?: Style.View.t,
  customAnimationOnGesture?: bool,
  fullScreenGestureEnabled?: bool,
  gestureEnabled?: bool,
  animationTypeForReplace?: animationTypeForReplace,
  backButtonInCustomView?: bool,
  animation?: animation,
  presentation?: presentation,
  orientation?: orientation,
  autoHideHomeIndicator?: bool,
  gestureDirection?: gestureDirection,
  animationDuration?: float,
  navigationBarColor?: Color.t,
  navigationBarHidden?: bool,
  freezeOnBlur?: bool,
}
and headerParams = {
  navigation: navigation,
  route: route,
  options: options,
  back: backOptions,
}

module type NavigatorModule = {
  module Navigator: {
    @react.component
    let make: (
      ~id: string=?,
      ~initialRouteName: string=?,
      ~screenOptions: screenOptionsParams => options=?,
      ~children: React.element=?,
    ) => React.element
  }

  module Screen: {
    @react.component
    let make: (
      ~name: string,
      ~navigationKey: string=?,
      ~options: screenOptionsParams => options=?,
      ~initialParams: 'params=?,
      ~getId: getIdOptions=?,
      ~component: React.component<screenProps>=?,
      ~getComponent: unit => React.component<screenProps>=?,
      ~children: screenProps => React.element=?,
    ) => React.element
  }

  module Group: {
    @react.component
    let make: (
      ~navigationKey: string=?,
      ~screenOptions: screenOptionsParams => options=?,
    ) => React.element
  }
}

type navigatorModule

%%private(
  @module("@react-navigation/native-stack")
  external createNativeStackNavigator: unit => navigatorModule = "createNativeStackNavigator"

  @module("./Interop")
  external adaptNavigatorModule: navigatorModule => module(NavigatorModule) = "adaptNavigatorModule"
)

module Make = () => unpack(createNativeStackNavigator()->adaptNavigatorModule)

type screenEventData = {closing: int}

module Navigation = {
  @send
  external setOptions: (navigation, options) => unit = "setOptions"

  @send external replace: (navigation, string) => unit = "replace"
  @send
  external replaceWithParams: (navigation, string, 'params) => unit = "replace"

  @send external push: (navigation, string) => unit = "push"
  @send external pushWithParams: (navigation, string, 'params) => unit = "push"

  @send external pop: (navigation, ~count: int=?, unit) => unit = "pop"

  @send external popToTop: (navigation, unit) => unit = "popToTop"

  @send
  external addEventListener: (
    navigation,
    @string
    [
      | #transitionStart(navigationEvent<screenEventData> => unit)
      | #transitionEnd(navigationEvent<screenEventData> => unit)
    ],
  ) => unsubscribe = "addListener"
}
