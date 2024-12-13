// https://reactnavigation.org/docs/drawer-navigator

open Core
open Elements
open ReactNative

type keyboardDismissMode =
  | @as("on-drag") OnDrag
  | @as("none") None

type drawerLabelProps = {
  focused: bool,
  color: Color.t,
}

type drawerIconProps = {
  focused: bool,
  color: Color.t,
  size: float,
}

type drawerPosition =
  | @as("left") Left
  | @as("right") Right

type drawerType =
  | @as("front") Front
  | @as("back") Back
  | @as("slide") Slide
  | @as("permanent") Permanent

type drawerStatusBarAnimation =
  | @as("slide") Slide
  | @as("fade") Fade
  | @as("none") None

// TODO
type gestureHandlerProps

type rec options = {
  ...Header.options,
  title?: string,
  @as("lazy") lazy_?: bool,
  drawerLabel?: drawerLabelProps => React.element,
  drawerIcon?: drawerIconProps => React.element,
  drawerActiveTintColor?: Color.t,
  drawerActiveBackgroundColor?: Color.t,
  drawerInactiveTintColor?: Color.t,
  drawerInactiveBackgroundColor?: Color.t,
  drawerItemStyle?: Style.View.t,
  drawerLabelStyle?: Style.Text.t,
  drawerContentContainerStyle?: Style.View.t,
  drawerContentStyle?: Style.View.t,
  drawerStyle?: Style.View.t,
  drawerPosition?: drawerPosition,
  drawerType?: drawerType,
  drawerHideStatusBarOnOpen?: bool,
  drawerStatusBarAnimation?: drawerStatusBarAnimation,
  overlayColor?: Color.t,
  sceneStyle?: Style.View.t,
  gestureEnabled?: bool,
  gestureHandlerProps?: gestureHandlerProps,
  swipeEnabled?: bool,
  swipeEdgeWidth?: float,
  swipeMinDistance?: float,
  keyboardDismissMode?: keyboardDismissMode,
  unmountOnBlur?: bool,
  freezeOnBlur?: bool,
  headerShown?: bool,
  header?: headerProps => React.element,
}
and headerProps = {
  navigation: navigation,
  route: route,
  options: options,
  layout: layout,
}

type contentComponentProps = {
  state: navigationState,
  navigation: navigation,
  descriptors: descriptors,
}

type drawerStatus =
  | @as("open") Open
  | @as("closed") Closed

module type NavigatorModule = {
  module Navigator: {
    @react.component
    let make: (
      ~id: string=?,
      ~initialRouteName: string=?,
      ~screenOptions: screenOptionsParams => options=?,
      ~backBehavior: backBehavior=?,
      ~defaultStatus: drawerStatus=?,
      ~detachInactiveScreens: bool=?,
      ~useLegacyImplementation: bool=?,
      ~drawerContent: React.component<contentComponentProps>=?,
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
  @module("@react-navigation/drawer")
  external createDrawerNavigator: unit => navigatorModule = "createDrawerNavigator"

  @module("./Interop")
  external adaptNavigatorModule: navigatorModule => module(NavigatorModule) = "adaptNavigatorModule"
)

module Make = () => unpack(createDrawerNavigator()->adaptNavigatorModule)

module Navigation = {
  @send
  external setOptions: (navigation, options) => unit = "setOptions"

  @send external jumpTo: (navigation, ~name: string, ~params: 'params=?, unit) => unit = "jumpTo"
  @send external openDrawer: navigation => unit = "openDrawer"
  @send external closeDrawer: navigation => unit = "closeDrawer"
  @send external toggleDrawer: navigation => unit = "toggleDrawer"

  @send
  external addEventListener: (
    navigation,
    @string
    [
      | #drawerItemPress(navigationEvent<unit> => unit)
    ],
  ) => unsubscribe = "addListener"
}

@module("@react-navigation/drawer")
external useDrawerStatus: unit => drawerStatus = "useDrawerStatus"

@module("@react-navigation/drawer")
external getDrawerStatusFromState: navigationState => drawerStatus = "getDrawerStatusFromState"

module DrawerItemList = {
  @module("@react-navigation/drawer")
  external make: React.component<contentComponentProps> = "DrawerItemList"
}
