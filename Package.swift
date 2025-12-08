// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GSKDesignSystem",

    platforms: [
        .iOS(.v15)
    ],

    products: [
        .library(
            name: "DesignTokens",
            targets: ["DesignTokens"]
        ),
        .library(
            name: "Utilities",
            targets: ["Utilities"]
        ),
        .library(
            name: "GSKButtonComponent",
            targets: ["GSKButtonComponent"]
        )
    ],

    targets: [
        .target(
            name: "DesignTokens",
            path: "Sources/DesignTokens"
        ),

        .target(
            name: "Utilities",
            dependencies: [
                "DesignTokens"
            ], 
            path: "Sources/Utilities"
        ),

        .target(
            name: "GSKButtonComponent",
            dependencies: [
                "DesignTokens",
                "Utilities"
            ],
            path: "Sources/GSKButtonComponent"
        )
    ]
)
