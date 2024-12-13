open ReactNative

module Header = {
  type headerTitleProps = {
    allowFontScaling?: bool,
    tintColor?: Color.t,
    style?: Style.Text.t,
    children: string,
  }

  @unboxed
  type headerTitle =
    | String(string)
    | Function(headerTitleProps => React.element)

  type headerLeftProps = {
    tintColor: option<Color.t>,
    pressColor: option<Color.t>,
    pressOpacity: option<float>,
    labelVisible: option<bool>,
  }

  type headerRightProps = {
    tintColor: option<Color.t>,
    pressColor: option<Color.t>,
    pressOpacity: option<float>,
  }

  type headerBackgroundOptions = {style: option<Style.View.t>}

  type headerTitleAlign =
    | @as("left") Left
    | @as("center") Center

  // Header props from https://reactnavigation.org/docs/elements#header
  type options = {
    headerTitle?: headerTitle,
    headerTitleAlign?: headerTitleAlign,
    headerTitleAllowFontScaling?: bool,
    headerTitleStyle?: Style.Text.t,
    headerTitleContainerStyle?: Style.View.t,
    headerLeft?: headerLeftProps => React.element,
    headerLeftLabelVisible?: bool,
    headerLeftContainerStyle?: Style.View.t,
    headerRight?: headerRightProps => React.element,
    headerRightContainerStyle?: Style.View.t,
    headerPressColor?: Color.t,
    headerPressOpacity?: float,
    headerTintColor?: Color.t,
    headerBackground?: headerBackgroundOptions => React.element,
    headerBackgroundContainerStyle?: Style.View.t,
    headerTransparent?: bool,
    headerStyle?: Style.View.t,
    headerShadowVisible?: bool,
    headerStatusBarHeight?: Style.size,
  }

  type headerBack = {
    title?: string,
    href?: string,
  }
  type props = {
    ...options,
    back?: headerBack,
    modal?: bool,
    layout?: Core.layout,
    title: string,
  }

  @module("@react-navigation/elements")
  external make: props => React.element = "Header"
}

module HeaderBackground = {
  @react.component @module("@react-navigation/elements")
  external make: (
    // actually all RN view props
    ~children: React.element=?,
  ) => React.element = "HeaderBackground"
}

module HeaderBackButton = {
  @react.component @module("@react-navigation/elements")
  external make: (
    ~labelVisible: bool=?,
    ~tintColor: Color.t=?,
    ~onPress: unit => unit,
  ) => React.element = "HeaderBackButton"
}

@module("@react-navigation/elements")
external useHeaderHeight: unit => float = "useHeaderHeight"
