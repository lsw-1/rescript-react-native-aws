open ReactNative

@react.component
let make = (~navigation as _, ~route as _) => {
  let {setAuthorize} = React.useContext(RootContext.context)
  <SafeAreaView style={SharedStyles.styles["container"]}>
    <View style={SharedStyles.styles["container"]}>
      <Spacer size={Spacer.Multiplier(10)} />
      <Text style={SharedStyles.styles["title"]}> {`Memociné 🍿`->React.string} </Text>
      <Spacer size={Spacer.Auto} />
      <MainButton
        text="Log in with Apple ID"
        onPress={_ => {
          setAuthorize(true)
        }}
      />
    </View>
  </SafeAreaView>
}
