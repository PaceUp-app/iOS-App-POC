// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "Routing",
  platforms: [.iOS(.v17)],
  products: [.library(name: "Routing", targets: ["Routing"])],
  targets: [.target(name: "Routing"), .testTarget(name: "RoutingTests", dependencies: ["Routing"])]
)
