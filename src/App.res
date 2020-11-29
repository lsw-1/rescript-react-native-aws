open ReactNative

@react.component
let make = () => <>
  <StatusBar barStyle=#lightContent />
  <ReactNavigation.Native.NavigationContainer>
    <Root.Nav />
  </ReactNavigation.Native.NavigationContainer>
</>
