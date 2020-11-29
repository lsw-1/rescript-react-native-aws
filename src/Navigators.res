open ReactNavigation

module M = {
  type params = unit
}

module RootStack = {
  include Stack.Make(M)
}
