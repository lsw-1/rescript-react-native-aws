open ReactNative

@react.component
let make = (~navigation as _, ~route as _) => {
  <View style={SharedStyles.styles["container"]}>
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Text style={SharedStyles.styles["title"]}> {"Great things here"->React.string} </Text>
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Auto} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
  </View>
}
