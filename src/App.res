open ReactNative
open ApolloClient.React

@react.component
let make = () => {
  let value = RootContext.useAppContext()

  <ApolloProvider client=Client.instance>
    <RootContext value={value}>
      <StatusBar barStyle=#lightContent /> <Navigators.RootStack />
    </RootContext>
  </ApolloProvider>
}
