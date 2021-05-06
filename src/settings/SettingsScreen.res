open ReactNative

@react.component
let make = (~navigation as _, ~route as _) => {
  <View style={SharedStyles.styles["container"]}>
    <Spacer size={Spacer.Multiplier(4)} />
    <Text style={SharedStyles.styles["title"]}> {"Great things here"->React.string} </Text>
    <Spacer size={Spacer.Multiplier(4)} />
  </View>
}
