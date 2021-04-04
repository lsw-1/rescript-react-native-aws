open ReactNative

type colors = {
  main: string,
  secondary: string,
  tertiary: string,
  bg: string,
  title: string,
  subtitle: string,
  body: string,
}

let colors = {
  main: "#E83B8E",
  secondary: "#F6FF00",
  tertiary: "#7F4DEA",
  bg: "#1A1D2B",
  title: "#FFFFFF",
  subtitle: "#FFFFFF",
  body: "#FFFFFF",
}

type sizing = Small | Medium | Large | XLarge | XXLarge | Custom(float)
let spacing = {
  "s": 4.,
  "m": 8.,
  "l": 16.,
  "xl": 24.,
  "xxl": 36.,
}

let styles = {
  open Style
  StyleSheet.create({
    "container": style(
      ~flex=1.,
      ~backgroundColor=colors.bg,
      ~paddingHorizontal=spacing["l"]->dp,
      (),
    ),
    "center": style(~alignItems=#center, ~justifyContent=#center, ()),
    "title": style(~fontSize=32., ~color=colors.title, ~fontWeight=#_800, ()),
    "subtitle": style(~fontSize=24., ~color=colors.title, ~fontWeight=#_500, ()),
    "body": style(~fontSize=14., ~color=colors.title, ~fontWeight=#_500, ()),
  })
}
