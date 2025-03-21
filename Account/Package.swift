// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Account",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Account", targets: ["Account"])],
  dependencies: [.package(name: "Model", path: "../Model"), .package(name: "Core", path: "../Core"),
                 .package(url: "https://github.com/hmlongco/Factory", from: "2.4.3")],
  targets: [
    .target(
      name: "Account",
      dependencies: [
        .product(name: "Model", package: "Model"),
        .product(name: "Core", package: "Core"),
        .product(name: "Factory", package: "Factory")
      ]
    ),
    .testTarget(name: "AccountTests", dependencies: ["Account"])
  ]
)
