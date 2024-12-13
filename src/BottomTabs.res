// https://reactnavigation.org/docs/bottom-tab-navigator

open Core
open Elements
open ReactNative

type tabBarLabelPosition =
  | @as("below-icon") BelowIcon
  | @as("beside-icon") BesideIcon

type tabBarIconOptions = {
  focused: bool,
  color: string,
}

module TabBarBadge = {
  type t

  external int: int => t = "%identity"
  external string: string => t = "%identity"
}

type rec options = {
  ...Header.options,
  title?: string,
  tabBarLabel?: string,
  tabBarShowLabel?: bool,
  tabBarLabelPosition?: tabBarLabelPosition,
  tabBarLabelStyle?: Style.Text.t,
  tabBarIcon?: tabBarIconOptions => React.element,
  tabBarIconStyle?: Style.Text.t,
  tabBarBadge?: string,
  tabBarBadgeStyle?: Style.Text.t,
  tabBarAccessibilityLabel?: string,
  tabBarTestID?: string,
  tabBarButton?: unit => React.element, // TODO: props
  tabBarColor?: Color.t,
  tabBarActiveTintColor?: string,
  tabBarInactiveTintColor?: string,
  tabBarActiveBackgroundColor?: string,
  tabBarInactiveBackgroundColor?: string,
  tabBarHideOnKeyboard?: bool,
  tabBarItemStyle?: Style.View.t,
  tabBarStyle?: Style.View.t,
  tabBarBackground?: unit => React.element,
  @as("lazy") lazy_?: bool,
  unmountOnBlur?: bool,
  freezeOnBlur?: bool,
  header?: headerParams => React.element,
  headerShown?: bool,
}
and headerParams = {
  navigation: navigation,
  route: route,
  options: options,
  layout: layout,
}

module type NavigatorModule = {
  module Navigator: {
    @react.component
    let make: (
      ~id: string=?,
      ~initialRouteName: string=?,
      ~screenOptions: screenOptionsParams => options=?,
      ~backBehavior: backBehavior=?,
      ~detachInactiveScreens: bool=?,
      ~sceneStyle: Style.View.t=?,
      ~tabBar: unit => React.element=?,
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
  @module("@react-navigation/bottom-tabs")
  external createBottomTabNavigator: unit => navigatorModule = "createBottomTabNavigator"

  @module("./Interop")
  external adaptNavigatorModule: navigatorModule => module(NavigatorModule) = "adaptNavigatorModule"
)

module Make = () => unpack(createBottomTabNavigator()->adaptNavigatorModule)

module Navigation = {
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
