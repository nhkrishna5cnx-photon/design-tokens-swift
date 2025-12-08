import StyleDictionary from "style-dictionary";
import DesignTokens from "./formats/swiftui-tokens.js";

StyleDictionary.registerFormat({
  name: "swiftui/tokens",
  formatter: DesignTokens
});

