open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "container": style(
      ~borderRadius=8.,
      ~width=100.->pct,
      ~height=66.->dp,
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
