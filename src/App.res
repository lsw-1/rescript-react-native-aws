open ReactNative

@react.component
let make = () => {
  let value = RootContext.useAppContext()

  <SafeAreaView style={SharedStyles.styles["container"]}>
    <RootContext value={value}>
      <StatusBar barStyle=#lightContent /> <Root.Navigation />
    </RootContext>
  </SafeAreaView>
}
