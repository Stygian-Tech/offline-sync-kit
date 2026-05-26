// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "offline-sync-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "OfflineSyncKit", targets: ["OfflineSyncKit"])],
  dependencies: [.package(path: "../atproto-primitive-kit")],
  targets: [
    .target(name: "OfflineSyncKit", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/OfflineSyncKit"),
    .testTarget(name: "OfflineSyncKitTests", dependencies: ["OfflineSyncKit"], path: "Tests/OfflineSyncKitTests"),
  ]
)
