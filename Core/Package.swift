// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Core",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Core", targets: ["Core"])],
  dependencies: [.package(name: "Model", path: "../Model"), .package(url: "https://github.com/hmlongco/Factory", from: "2.4.3")],
  targets: [
    .target(name: "Core", dependencies: [.product(name: "Model", package: "Model"), .product(name: "Factory", package: "Factory")]),
    .testTarget(name: "CoreTests", dependencies: ["Core"])
  ]
)
