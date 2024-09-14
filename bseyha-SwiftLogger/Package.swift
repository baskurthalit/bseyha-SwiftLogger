// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bseyha-SwiftLogger",
    platforms: [.iOS(.v14),.macOS(.v11),.watchOS(.v7),.tvOS(.v14),.visionOS(.v1)],
    products: [
        .library(
            name: "bseyha-SwiftLogger",
            targets: ["bseyha-SwiftLogger"]),
    ],
    targets: [
        .target(
            name: "bseyha-SwiftLogger"),
    ]
)
