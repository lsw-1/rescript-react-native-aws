type action = SetDarkMode(bool) | SetAuthorized(bool)
type state = {authorized: bool, darkMode: bool, setAuthorize: bool => unit}

let initState = {
  authorized: false,
  darkMode: false,
  setAuthorize: _ => (),
}

let reducer = (state, action) =>
  switch action {
  | SetDarkMode(b) => {...state, darkMode: b}
  | SetAuthorized(a) => {...state, authorized: a}
  }

let useAppContext = () => {
  let (state, dispatch) = React.useReducer(reducer, initState)

  let setAuthorize = val => dispatch(SetAuthorized(val))

  {
    ...state,
    setAuthorize: setAuthorize,
  }
}

let context = React.createContext(initState)
let makeProps = (~value, ~children, ()) =>
  {
    "value": value,
    "children": children,
  }
include React.Context
let make = React.Context.provider(context)
