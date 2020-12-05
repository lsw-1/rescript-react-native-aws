open ReactNative

@react.component
let make = () => {
  let value = RootContext.useAppContext()
  <ApolloClient.React.ApolloProvider client=Client.instance>
    <SafeAreaView style={SharedStyles.styles["container"]}>
      <RootContext value={value}>
        <StatusBar barStyle=#lightContent /> <Root.Navigation />
      </RootContext>
    </SafeAreaView>
  </ApolloClient.React.ApolloProvider>
}
