open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "gradient": style(~flex=1., ()),
    "container": style(~height=100.->dp, ~justifyContent=#center, ~alignItems=#center, ()),
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
    <View style={StyleSheet.flatten([SharedStyles.styles["container"], styles["container"]])}>
      <Text style={SharedStyles.styles["title"]}>
        {"Welcome to the first page"->React.string}
      </Text>
    </View>
  </Expo.LinearGradient>
