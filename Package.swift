// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHomeLED",
    dependencies: [
        .package(url: "https://github.com/uraimo/SwiftyGPIO.git", from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "SwiftHomeLED",
            dependencies: ["SwiftyGPIO"]),
        .testTarget(
            name: "SwiftHomeLEDTests",
            dependencies: ["SwiftHomeLED"]),
    ]
)
