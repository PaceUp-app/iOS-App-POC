// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "Routing",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Routing", targets: ["Routing"])],
  dependencies: [.package(name: "Model", path: "../Model")],
  targets: [
    .target(name: "Routing", dependencies: [.product(name: "Model", package: "Model")]),
    .testTarget(name: "RoutingTests", dependencies: ["Routing"])
  ]
)
