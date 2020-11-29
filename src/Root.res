open Navigators

module Nav = {
  @react.component
  let make = () => {
    let (isAuth, setAuth) = React.useState(() => false)

    React.useEffect0(() => {
      Js.Console.log("Test")
      Some(() => {()})
    })

    <RootStack.Navigator headerMode=#none>
      {if isAuth {
        <RootStack.Screen name="authorized" component=MainScreen.make />
      } else {
        <RootStack.Screen name="unauthorized" component=WelcomeScreen.make />
      }}
    </RootStack.Navigator>
  }
}
