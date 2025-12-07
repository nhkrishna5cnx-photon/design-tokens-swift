// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GSKDesignSystem",
    
    platforms: [
        .iOS(.v15)
    ],
    
    products: [
        // ✅ Public Tokens Module
        .library(
            name: "DesignTokens",
            targets: ["DesignTokens"]
        ),
        
        // ✅ Public Utilities Module
        .library(
            name: "Utilities",
            targets: ["Utilities"]
        ),
        
        // ✅ Public Button Component Module
        .library(
            name: "GSKButtonComponent",
            targets: ["GSKButtonComponent"]
        )
    ],
    
    targets: [
        // ✅ Design Tokens Target
        .target(
            name: "DesignTokens",
            path: "Sources/DesignTokens"
        ),
        
        // ✅ Utilities Target
        .target(
            name: "Utilities",
            path: "Sources/Utilities"
        ),
        
        // ✅ Button Component Target (Depends on Tokens + Utilities)
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
