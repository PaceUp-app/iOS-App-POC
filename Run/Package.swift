// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Run",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Run", targets: ["Run"])],
  dependencies: [.package(name: "Model", path: "../Model"), .package(name: "Core", path: "../Core")],
  targets: [
    .target(name: "Run", dependencies: [.product(name: "Model", package: "Model"), .product(name: "Core", package: "Core")]),
    .testTarget(name: "RunTests", dependencies: ["Run"])
  ]
)
