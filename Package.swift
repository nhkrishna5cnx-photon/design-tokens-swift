// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GSKDesignSystem",
    
    platforms: [
        .iOS(.v15)
    ],
    
    products: [
        // ✅ Public Button Component Module
        .library(
            name: "GSKButtonComponent",
            targets: ["GSKButtonComponent"]
        )
    ],
    
    targets: [
        .target(
            name: "GSKButtonComponent",
            path: "Sources/GSKButtonComponent"
        )
    ]
)
