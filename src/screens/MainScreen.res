open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "gradient": style(~flex=1., ()),
    "container": style(~flex=1., ~justifyContent=#center, ~alignItems=#center, ()),
    "text": style(~fontSize=22., ~color="#eee", ~fontWeight=#_500, ()),
  })
}

@react.component
let make = (~navigation as _, ~route as _) =>
  <Expo.LinearGradient
    colors=[SharedStyles.colors.main, SharedStyles.colors.secondary]
    start=[0.0, 1.0]
    _end=[1.0, 0.0]
    style={styles["gradient"]}>
    <View style={styles["container"]}>
      <Text style={styles["text"]}> {"Hej"->React.string} </Text>
    </View>
  </Expo.LinearGradient>
