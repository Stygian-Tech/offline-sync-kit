// swift-tools-version: 6.0
import PackageDescription
let package = Package(
  name: "offline-sync-kit",
  platforms: [.macOS(.v14)],
  products: [.library(name: "OfflineSyncKit", targets: ["OfflineSyncKit"])],
  dependencies: [.package(url: "https://github.com/Stygian-Tech/atproto-primitive-kit.git", revision: "1105fb3c008a1048c40b9d1b71cc2cc8e51319b0")],
  targets: [
    .target(name: "OfflineSyncKit", dependencies: [.product(name: "ATProtoPrimitiveKit", package: "atproto-primitive-kit")], path: "Sources/OfflineSyncKit"),
    .testTarget(name: "OfflineSyncKitTests", dependencies: ["OfflineSyncKit"], path: "Tests/OfflineSyncKitTests"),
  ]
)
