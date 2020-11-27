open ReactNavigation;

module RootStack = {
  include Stack.Make({
    type params = unit;
  });

  [@react.component]
  let make = () => {
    let (isAuth, setAuth) = React.useState(() => false);

    <Native.NavigationContainer>
      <Navigator>
        {if (isAuth) {
           <Screen name="authorized" component=MainScreen.make />;
         } else {
           <Screen name="unauthorized" component=WelcomeScreen.make />;
         }}
      </Navigator>
    </Native.NavigationContainer>;
  };
};
