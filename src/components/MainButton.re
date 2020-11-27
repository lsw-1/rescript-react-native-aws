open ReactNative;

let styles = {
  Style.(
    StyleSheet.create({
      "container":
        style(~width=100.->pct, ~height=88.->dp, ~backgroundColor="#eaa", ()),
      "text": style(~fontSize=22., ~color="#eee", ~fontWeight=`_600, ()),
    })
  );
};

[@react.component]
let make = (~onPress, ~text) => {
  <Pressable style=styles##container onPress>
    <Text style=styles##text> text->React.string </Text>
  </Pressable>;
};
