open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "gradient": style(~flex=1., ()),
    "container": style(),
    "text": style(~fontSize=22., ~color="#eee", ~fontWeight=#_500, ()),
    "userCard": style(
      ~alignSelf=#stretch,
      ~backgroundColor=SharedStyles.colors.tertiary,
      ~height=84.->dp,
      ~borderRadius=8.,
      ~alignItems=#center,
      ~padding=12.->dp,
      ~flexDirection=#row,
      (),
    ),
    "image": style(~height=82.->dp, ~width=82.->dp, ~backgroundColor="#999", ~borderRadius=44., ()),
    "cTxt": style(~padding=12.->dp, ~height=82.->dp, ~justifyContent=#spaceBetween, ()),
  })
}

@react.component
let make = (~title) => {
  <View style={styles["userCard"]}>
    <View style={StyleSheet.flatten([styles["image"], SharedStyles.styles["center"]])} />
    <View style={styles["cTxt"]}>
      <Text> {title->String.uppercase_ascii->React.string} </Text>
    </View>
  </View>
}
