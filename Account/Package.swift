// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Account",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Account", targets: ["Account"])],
  dependencies: [.package(name: "Model", path: "../Model")],
  targets: [
    .target(name: "Account", dependencies: [.product(name: "Model", package: "Model")]),
    .testTarget(name: "AccountTests", dependencies: ["Account"])
  ]
)
