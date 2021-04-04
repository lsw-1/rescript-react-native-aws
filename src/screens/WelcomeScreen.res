open ReactNative

@react.component
let make = (~navigation as _, ~route as _) => {
  let {setAuthorize} = React.useContext(RootContext.context)

  <View style={SharedStyles.styles["container"]}>
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Text style={SharedStyles.styles["title"]}> {"Great things here"->React.string} </Text>
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
    <Svg.Blob />
    <Spacer size={Spacer.Auto} />
    <MainButton
      text="Log in with Apple ID"
      onPress={_ => {
        setAuthorize(true)
      }}
    />
    <Spacer size={Spacer.Size(SharedStyles.XXLarge)} />
  </View>
}
