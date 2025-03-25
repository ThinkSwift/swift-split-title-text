// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-split-title-text",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-split-title-text",
            targets: ["swift-split-title-text"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swift-split-title-text"),
        .testTarget(
            name: "swift-split-title-textTests",
            dependencies: ["swift-split-title-text"]
        ),
    ]
)
