// https://reactnavigation.org/docs/material-top-tab-navigator

open Core
open ReactNative

type tabBarLabelOptions = {
  focused: bool,
  color: string,
}

type tabBarIconOptions = {
  focused: bool,
  color: string,
}

type options = {
  title?: string,
  tabBarLabel?: tabBarLabelOptions => React.element,
  tabBarAccessibilityLabel?: string,
  tabBarAllowFontScaling?: bool,
  tabBarShowLabel?: bool,
  tabBarIcon?: tabBarIconOptions => React.element,
  tabBarShowIcon?: bool,
  tabBarBadge?: unit => React.element,
  tabBarIndicator?: unit => React.element,
  tabBarIndicatorStyle?: Style.View.t,
  tabBarIndicatorContainerStyle?: Style.View.t,
  tabBarTestID?: string,
  tabBarActiveTintColor?: string,
  tabBarInactiveTintColor?: string,
  tabBarPressColor?: string,
  tabBarPressOpacity?: float,
  tabBarBounces?: bool,
  tabBarScrollEnabled?: bool,
  tabBarIconStyle?: Style.View.t,
  tabBarLabelStyle?: Style.Text.t,
  tabBarItemStyle?: Style.View.t,
  tabBarContentContainerStyle?: Style.View.t,
  tabBarStyle?: Style.View.t,
  animationEnabled?: bool,
  swipeEnabled?: bool,
  @as("lazy") lazy_?: bool,
  lazyPreloadDistance?: float,
  lazyPlaceholder?: unit => React.element,
}

type tabBarPosition =
  | @as("top") Top
  | @as("bottom") Bottom

type keyboardDismissMode =
  | @as("auto") Auto
  | @as("on-drag") OnDrag
  | @as("none") None

type tabBarProps = {
  // ----
  state: navigationState,
  navigation: navigation,
  descriptors: descriptors,
  // SceneRendererProps from react-native-tab-view
  layout: layout,
  position: Animated.Value.t,
  jumpTo: string => unit,
}

module type NavigatorModule = {
  module Navigator: {
    @react.component
    let make: (
      ~id: string=?,
      ~initialRouteName: string=?,
      ~screenOptions: screenOptionsParams => options=?,
      ~backBehavior: backBehavior=?,
      ~tabBarPosition: tabBarPosition=?,
      ~keyboardDismissMode: keyboardDismissMode=?,
      ~initialLayout: layout=?,
      ~sceneContainerStyle: Style.View.t=?,
      ~style: Style.View.t=?,
      ~tabBar: tabBarProps => React.element=?,
      ~children: React.element,
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
  @module("@react-navigation/material-top-tabs")
  external createMaterialTopTabNavigator: unit => navigatorModule = "createMaterialTopTabNavigator"

  @module("./Interop")
  external adaptNavigatorModule: navigatorModule => module(NavigatorModule) = "adaptNavigatorModule"
)

module Make = () => unpack(createMaterialTopTabNavigator()->adaptNavigatorModule)

module Navigation = {
  @send
  external setOptions: (navigation, options) => unit = "setOptions"

  @send external jumpTo: (navigation, string) => unit = "jumpTo"
  @send
  external jumpToWithParams: (navigation, string, 'params) => unit = "jumpTo"

  @send
  external addEventListener: (
    navigation,
    @string
    [
      | #tabPress(navigationEvent<unit> => unit)
    ],
  ) => unsubscribe = "addListener"
}
