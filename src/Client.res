let graphqlEndpoint = "https://drzwe22nyvdg7d7lls6lycbnze.appsync-api.eu-central-1.amazonaws.com/graphql"

let headers = {
  "x-api-key": "da2-cjswqysas5cnrcdy63jtngphv4",
}

let httpLink = ApolloClient.Link.HttpLink.make(
  ~uri=_ => graphqlEndpoint,
  ~headers=Obj.magic(headers),
  (),
)

let instance = ApolloClient.make(
  ~cache=ApolloClient.Cache.InMemoryCache.make(),
  ~connectToDevTools=true,
  ~link=httpLink,
  (),
)
