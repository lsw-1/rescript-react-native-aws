open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "text": style(~fontSize=22., ~color="#eee", ~fontWeight=#_500, ()),
  })
}

@react.component
let make = (~navigation, ~route as _) =>
  <View style={SharedStyles.styles["container"]}>
    <Text style={SharedStyles.styles["title"]}> {"Great things here"->React.string} </Text>
    <MainButton
      text="Hej"
      onPress={_ => {
        navigation->Navigators.RootStack.Navigation.navigate("authorized")
        ()
      }}
    />
  </View>
