open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "container": style(
      ~borderRadius=8.,
      ~alignSelf=#stretch,
      ~height=56.->dp,
      ~backgroundColor=SharedStyles.colors.main,
      ~justifyContent=#center,
      ~alignItems=#center,
      (),
    ),
  })
}

@react.component
let make = (~onPress, ~text) =>
  <Pressable style={styles["container"]} onPress>
    <Text style={SharedStyles.styles["subtitle"]}> {text->React.string} </Text>
  </Pressable>
