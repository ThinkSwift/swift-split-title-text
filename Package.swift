// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SplitTitleText",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SplitTitleText",
            targets: ["SplitTitleText"]
        ),
    ],
    targets: [
        .target(
            name: "SplitTitleText",
            dependencies: []
        ),
        .testTarget(
            name: "SplitTitleTextTests",
            dependencies: ["SplitTitleText"]
        ),
    ]
)
