let graphqlEndpoint = "https://drzwe22nyvdg7d7lls6lycbnze.appsync-api.eu-central-1.amazonaws.com/graphql"

let httpLink = ApolloClient.Link.HttpLink.make(~uri=_ => graphqlEndpoint, ())

let instance = ApolloClient.make(
  ~cache=ApolloClient.Cache.InMemoryCache.make(),
  ~connectToDevTools=true,
  ~link=httpLink,
  (),
)
