open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "container": viewStyle(~backgroundColor=SharedStyles.colors.bg, ()),
  })
}

@react.component
let make = () => {
  <View
    style={StyleSheet.flatten([
      SharedStyles.styles["container"],
      SharedStyles.styles["center"],
      styles["container"],
    ])}>
    <Text style={SharedStyles.styles["title"]}> {"Loading the screen for you"->React.string} </Text>
  </View>
}
