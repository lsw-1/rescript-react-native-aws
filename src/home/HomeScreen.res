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
    "text": style(~fontSize=22., ~color=SharedStyles.colors.title, ~fontWeight=#_500, ()),
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
    "list": style(~flex=1., ()),
  })
}

type movieList = {id: string, title: string, subtitle: string}
let mock = [
  {
    title: "title",
    subtitle: "sub",
    id: "1",
  },
]

@react.component
let make = (~navigation as _, ~route as _) => {
  let query = GetUser.use({id: "e5ca065a-dc7b-4a49-a0cb-eb0a6aa1736d"})

  switch query {
  | {loading: true} => <LoadingScreen />
  | {error: Some(err)} => <View> <Text> {err.message->React.string} </Text> </View>

  | {loading: false, data: Some({getUser})} =>
    <View style={SharedStyles.styles["container"]}>
      <FlatList
        style={styles["list"]}
        keyExtractor={(l, _) => l.id}
        data={mock}
        renderItem={({item}) => <ListItem title={item.title} subtitle={item.subtitle} />}
      />
    </View>
  | _ => <LoadingScreen />
  }
}
