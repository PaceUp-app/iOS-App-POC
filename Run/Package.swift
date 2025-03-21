// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Run",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Run", targets: ["Run"])],
  targets: [.target(name: "Run"), .testTarget(name: "RunTests", dependencies: ["Run"])]
)
