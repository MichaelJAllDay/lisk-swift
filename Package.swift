// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Lisk",
    products: [
        .library(name: "Lisk", targets: ["Lisk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vzsg/ed25519.git", from: "0.2.0")
    ],
    targets: [
        .target(
            name: "Lisk",
            dependencies: ["Ed25519"],
            path: "./Sources"
        ),
        .testTarget(
            name: "LiskTests",
            dependencies: ["Lisk"],
            path: "./Tests"
        )
    ],
    swiftLanguageVersions: [4]
)
