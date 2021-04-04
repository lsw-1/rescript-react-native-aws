open ReactNative

type size = Auto | Size(SharedStyles.sizing)

@react.component
let make = (~size) => {
  open Style
  let style = switch size {
  | Auto => style(~marginTop="auto", ())
  | Size(s) =>
    switch s {
    | Small => style(~paddingTop=SharedStyles.spacing["s"]->dp, ())
    | Medium => style(~paddingTop=SharedStyles.spacing["m"]->dp, ())
    | Large => style(~paddingTop=SharedStyles.spacing["l"]->dp, ())
    | XLarge => style(~paddingTop=SharedStyles.spacing["xl"]->dp, ())
    | XXLarge => style(~paddingTop=SharedStyles.spacing["xxl"]->dp, ())
    | Custom(size) => style(~paddingTop=size->dp, ())
    }
  }

  <View style={style} />
}
