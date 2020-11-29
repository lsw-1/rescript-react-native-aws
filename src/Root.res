open Navigators

module Navigation = {
  @react.component
  let make = () => {
    let {authorized} = React.useContext(RootContext.context)

    React.useEffect0(() => {
      Js.Console.log("Test")
      Some(() => {()})
    })
    <ReactNavigation.Native.NavigationContainer>
      <RootStack.Navigator headerMode=#none>
        {if authorized {
          <RootStack.Screen name="authorized" component=MainScreen.make />
        } else {
          <RootStack.Screen name="unauthorized" component=WelcomeScreen.make />
        }}
      </RootStack.Navigator>
    </ReactNavigation.Native.NavigationContainer>
  }
}
