// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Run",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Run", targets: ["Run"])],
  dependencies: [
    .package(name: "Model", path: "../Model"),
    .package(name: "Core", path: "../Core"),
    .package(name: "Routing", path: "../Routing"),
    .package(url: "https://github.com/hmlongco/Factory", from: "2.4.3")
  ],
  targets: [
    .target(
      name: "Run",
      dependencies: [
        .product(name: "Model", package: "Model"),
        .product(name: "Core", package: "Core"),
        .product(name: "Factory", package: "Factory"),
        .product(name: "Routing", package: "Routing")
      ]
    ),
    .testTarget(name: "RunTests", dependencies: ["Run"])
  ]
)
