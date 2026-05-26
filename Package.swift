// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "stygian-sync",
  platforms: [.macOS(.v14)],
  products: [.library(name: "StygianSync", targets: ["StygianSync"])],
  dependencies: [.package(path: "../stygian-core")],
  targets: [
    .target(name: "StygianSync", dependencies: [.product(name: "StygianCore", package: "stygian-core")], path: "Sources/StygianSync"),
    .testTarget(name: "StygianSyncTests", dependencies: ["StygianSync"], path: "Tests/StygianSyncTests"),
  ]
)
