// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "offline-sync-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "OfflineSyncKit", targets: ["OfflineSyncKit"])],
  dependencies: [.package(path: "../atproto-primitives")],
  targets: [
    .target(name: "OfflineSyncKit", dependencies: [.product(name: "AtprotoPrimitives", package: "atproto-primitives")], path: "Sources/OfflineSyncKit"),
    .testTarget(name: "OfflineSyncKitTests", dependencies: ["OfflineSyncKit"], path: "Tests/OfflineSyncKitTests"),
  ]
)
