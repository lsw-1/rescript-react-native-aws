open ReactNative

let style = {
  open Style
  StyleSheet.create({
    "container": style(
      ~flexDirection=#row,
      ~height=88.->dp,
      ~alignSelf=#stretch,
      ~padding=12.->dp,
      ~alignItems=#center,
      ~justifyContent=#center,
      (),
    ),
    "icon": style(~flexDirection=#row, ~height=88.->dp, ~alignSelf=#stretch, ~padding=12.->dp, ()),
    "middle": style(~flex=1., ~justifyContent=#spaceBetween, ()),
  })
}

@react.component
let make = (~title, ~subtitle) => {
  <View style={style["container"]}>
    <View />
    <View style={style["middle"]}>
      <Text> {title->React.string} </Text> <Text> {subtitle->React.string} </Text>
    </View>
  </View>
}
