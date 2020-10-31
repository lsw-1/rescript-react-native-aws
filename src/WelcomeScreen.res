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
let make = (~navigation, ~route) =>
  <Expo.LinearGradient
    colors=["rgb(50, 13, 47)", "rgb(10, 13, 47)"]
    start=[0.0, 1.0]
    _end=[1.0, 0.0]
    style={styles["gradient"]}>
    <StatusBar barStyle=#lightContent />
    <View style={styles["container"]}>
      <Text style={styles["text"]}> {React.string(j`${"MAGA! "} 🤖`)} </Text>
    </View>
  </Expo.LinearGradient>
