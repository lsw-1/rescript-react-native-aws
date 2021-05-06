open ReactNative

@react.component
let make = () => {
  let value = RootContext.useAppContext()

  <ApolloClient.React.ApolloProvider client=Client.instance>
    <RootContext value={value}>
      <StatusBar barStyle=#default /> <Navigators.RootStack />
    </RootContext>
  </ApolloClient.React.ApolloProvider>
}
