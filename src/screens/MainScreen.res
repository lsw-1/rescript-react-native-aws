open ReactNative

module GetUser = %graphql(
  `
    query GetUser($id: ID!) {
      getUser(id: $id) {
      id
      title
    }
  }
  `
)

let styles = {
  open Style
  StyleSheet.create({
    "gradient": style(~flex=1., ()),
    "container": style(),
    "text": style(~fontSize=22., ~color="#eee", ~fontWeight=#_500, ()),
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
        <Text style={SharedStyles.styles["title"]}>
          {switch getUser {
          | Some(u) =>
            switch u.title {
            | Some(t) => t->React.string
            | None => ""->React.string
            }
          | None => ""->React.string
          }}
        </Text>
      </View>
    </Expo.LinearGradient>
  | {loading: false, data: None} => "Error"->React.string
  }
}
