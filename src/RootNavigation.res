open ReactNavigation

module RootStack = {
  include Stack.Make({
    type params = unit
  })

  @react.component
  let make = () =>
    <Native.NavigationContainer>
      <Navigator headerMode=#none>
        <Screen name="unauthorized" component=WelcomeScreen.make />
      </Navigator>
    </Native.NavigationContainer>
}
