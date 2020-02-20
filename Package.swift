// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ansi",
    platforms: [
        .macOS(.v10_11)
    ],
    products: [
      .library(name: "Ansi", type: .dynamic, targets: ["Ansi"]),
    ],
    dependencies: [
       .package(url: "https://github.com/Rightpoint/BonMot.git", from: "5.0.0"),
       .package(url: "https://github.com/kareman/FootlessParser.git", from: "0.5.0"),
       .package(url: "https://github.com/zenangst/Hue.git", from: "5.0.0")
     ],
    targets: [
      .target(name: "Ansi", dependencies: ["BonMot", "FootlessParser", "Hue"], path: "Source")
    ]
)
