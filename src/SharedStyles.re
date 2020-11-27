open ReactNative;

type colors = {
  main: string,
  secondary: string,
  tertiary: string,
  bg: string,
  title: string,
  subtitle: string,
  body: string,
};

let colors = {
  main: "#E83B8E",
  secondary: "#F6FF00",
  tertiary: "#7F4DEA",
  bg: "#242533",
  title: "#FFFFFF",
  subtitle: "#FFFFFF",
  body: "#FFFFFF",
};

let styles = {
  Style.(
    StyleSheet.create({
      "container": style(~flex=1., ~backgroundColor=colors.bg, ()),
      "containerCenter":
        style(~flex=1., ~alignItems=`center, ~justifyContent=`center, ()),
      "title":
        style(~fontSize=32., ~color=colors.title, ~fontWeight=`_800, ()),
      "subtitle":
        style(~fontSize=24., ~color=colors.title, ~fontWeight=`_500, ()),
      "body":
        style(~fontSize=14., ~color=colors.title, ~fontWeight=`_500, ()),
    })
  );
};
