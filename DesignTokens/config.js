import StyleDictionary from "style-dictionary";
import swiftuiFormat from "./formats/swiftui-tokens.js";

StyleDictionary.registerFormat({
  name: "swiftui/tokens",
  format: swiftuiFormat
});

// Register custom transform group
StyleDictionary.registerTransformGroup({
  name: "swiftui",
  transforms: []  // empty array disables all transforms
});

export default {
  source: [ "tokens/design-tokens.dtcg.json",
            "tokens/figma-variables.json"],
  platforms: {
    swiftui: {
      transformGroup: "swiftui",
      buildPath: "../GSKComponentLibrary/Sources/GSKComponentLibrary/Tokens/",
        files: [{
            destination: "SwiftUITokens.swift",
            format: "swiftui/tokens"
          }]
    }
  }
};
