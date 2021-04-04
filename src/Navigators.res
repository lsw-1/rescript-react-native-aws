open ReactNavigation
open ReactNative

module M = {
  type params = unit
}

module Tabs = {
  include BottomTabs.Make(M)

  @react.component
  let make = (~navigation as _, ~route as _) => {
    <Navigator initialRouteName="feed">
      <Screen name="feed" component=MainScreen.make />
      <Screen name="friends" component=WelcomeScreen.make />
      <Screen name="budget" component=WelcomeScreen.make />
    </Navigator>
  }
}

module RootStack = {
  open Style
  include Stack.Make(M)

  @react.component
  let make = () => {
    let {authorized} = React.useContext(RootContext.context)
    <ReactNavigation.Native.NavigationContainer>
      <Navigator initialRouteName="unauthorized">
        {if authorized {
          <>
            <Screen
              options={props =>
                options(
                  ~title="",
                  ~headerStyle=style(~backgroundColor=SharedStyles.colors.bg, ~borderWidth=0., ()),
                  ~headerRight=_ =>
                    <Pressable
                      onPress={_ => props.navigation->Navigation.navigate("settings")}
                      style={style(~padding=16.->dp, ())}>
                      <Svg.Cog />
                    </Pressable>,
                  (),
                )}
              name="authorized"
              component=Tabs.make
            />
            <Screen
              options={props => options(~title="s", ~animationEnabled=false, ())}
              name="settings"
              component=SettingsScreen.make
            />
          </>
        } else {
          <Screen
            options={props => options(~headerShown=false, ())}
            name="unauthorized"
            component=WelcomeScreen.make
          />
        }}
      </Navigator>
    </ReactNavigation.Native.NavigationContainer>
  }
}
