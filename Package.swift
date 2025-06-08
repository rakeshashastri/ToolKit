// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToolKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ToolKit",
            targets: ["ToolKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rakeshashastri/Component1.git", from: "0.0.1"),
        .package(url: "https://github.com/rakeshashastri/Component2.git", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ToolKit",
            dependencies: ["Component1", "Component2"]),
        .testTarget(
            name: "ToolKitTests",
            dependencies: ["ToolKit"]
        ),
    ]
)
