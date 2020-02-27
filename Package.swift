// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DumbSwiftUI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "DumbSwiftUI", targets: ["DumbSwiftUI"])
    ],
    targets: [
        .target(name: "DumbSwiftUI", dependencies: [], path: "Sources"),
    ],
    swiftLanguageVersions: [
        .version("5.1")
    ]
)
