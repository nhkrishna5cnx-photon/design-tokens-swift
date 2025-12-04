import StyleDictionary from "style-dictionary";
import swiftuiTokens from "./formats/swiftui-tokens.js";

StyleDictionary.registerFormat({
  name: "swiftui/tokens",
  formatter: swiftuiTokens
});

