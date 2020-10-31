open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "container": style(~flex=1., ~justifyContent=#center, ~alignItems=#center, ()),
  })
}

@react.component
let make = () =>
  <View style={styles["container"]}>
    <StatusBar barStyle=#lightContent /> <RootNavigation.RootStack />
  </View>
