// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "console-kit",
    products: [
        .library(name: "ConsoleKit", targets: ["ConsoleKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "ConsoleKit", dependencies: ["Logging"]),
        .testTarget(name: "ConsoleKitTests", dependencies: ["ConsoleKit"]),
    ]
)
