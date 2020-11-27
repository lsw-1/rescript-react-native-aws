// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as ReactNative from "react-native";
import * as Style$ReactNative from "reason-react-native/src/apis/Style.bs.js";

var styles = ReactNative.StyleSheet.create({
      container: {
        backgroundColor: "#eaa",
        height: 88,
        width: Style$ReactNative.pct(100)
      },
      text: {
        color: "#eee",
        fontSize: 22,
        fontWeight: "600"
      }
    });

function MainButton(Props) {
  var onPress = Props.onPress;
  var text = Props.text;
  return React.createElement(ReactNative.Pressable, {
              children: React.createElement(ReactNative.Text, {
                    style: styles.text,
                    children: text
                  }),
              onPress: onPress,
              style: styles.container
            });
}

var make = MainButton;

export {
  styles ,
  make ,
  
}
/* styles Not a pure module */
