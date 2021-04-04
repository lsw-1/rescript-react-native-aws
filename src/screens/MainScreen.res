open ReactNative
open Belt.Option

module GetUser = %graphql(`
    query GetUser($id: ID!) {
      getUser(id: $id) {
      id
      title
    }
  }
  `)

let styles = {
  open Style
  StyleSheet.create({
    "gradient": style(~flex=1., ()),
    "container": style(),
    "text": style(~fontSize=22., ~color="#eee", ~fontWeight=#_500, ()),
    "userCard": style(
      ~width=100.->pct,
      ~backgroundColor="#ccc",
      ~height=140.->dp,
      ~borderRadius=8.,
      ~alignItems=#center,
      ~padding=12.->dp,
      ~flexDirection=#row,
      (),
    ),
  })
}

@react.component
let make = (~navigation as _, ~route as _) => {
  let query = GetUser.use({id: "e5ca065a-dc7b-4a49-a0cb-eb0a6aa1736d"})

  switch query {
  | {loading: true} => <LoadingScreen />
  | {data: Some({getUser})} =>
    <Expo.LinearGradient
      colors=[SharedStyles.colors.main, SharedStyles.colors.secondary]
      start=[0.0, 1.0]
      _end=[1.0, 0.0]
      style={styles["gradient"]}>
      <View style={StyleSheet.flatten([SharedStyles.styles["container"], styles["container"]])}>
        <Spacer size={Spacer.Size(SharedStyles.Large)} />
        <Text style={SharedStyles.styles["title"]}> {"Welcome in"->React.string} </Text>
        <Spacer size={Spacer.Size(SharedStyles.Large)} />
        <Card title={getUser->mapWithDefault("", user => user.title)} />
      </View>
    </Expo.LinearGradient>
  | {loading: false, data: None} => <LoadingScreen />
  }
}
