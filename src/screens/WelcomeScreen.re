open ReactNative;
open ReactNavigation;

let styles = {
  Style.(
    StyleSheet.create({
      "gradient": style(~flex=1., ()),
      "container":
        style(~flex=1., ~justifyContent=`center, ~alignItems=`center, ()),
      "text": style(~fontSize=22., ~color="#eee", ~fontWeight=`_500, ()),
    })
  );
};

[@react.component]
let make = (~navigation, ~route) => {
  <View style={SharedStyles.styles##container}>
    <Text style={SharedStyles.styles##title}>
      "Great things here"->React.string
    </Text>
    <MainButton text="Hej" onPress={_ => {()}} />
  </View>;
};
