// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as SharedStyles from "../SharedStyles.bs.js";
import * as ReactNative from "react-native";
import * as ExpoLinearGradient from "expo-linear-gradient";

var styles = ReactNative.StyleSheet.create({
      gradient: {
        flex: 1
      },
      container: {
        alignItems: "center",
        flex: 1,
        justifyContent: "center"
      },
      text: {
        color: "#eee",
        fontSize: 22,
        fontWeight: "500"
      }
    });

function MainScreen(Props) {
  return React.createElement(ExpoLinearGradient.LinearGradient, {
              colors: [
                SharedStyles.colors.main,
                SharedStyles.colors.secondary
              ],
              style: styles.gradient,
              start: [
                0.0,
                1.0
              ],
              end: [
                1.0,
                0.0
              ],
              children: React.createElement(ReactNative.View, {
                    style: styles.container,
                    children: React.createElement(ReactNative.Text, {
                          style: styles.text,
                          children: "Hej"
                        })
                  })
            });
}

var make = MainScreen;

export {
  styles ,
  make ,
  
}
/* styles Not a pure module */