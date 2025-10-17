// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CLTableViewManager",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CLTableViewManager",
            targets: ["CLTableViewManager"]
        ),
    ],
    targets: [
        .target(
            name: "CLTableViewManager",
            path: "CLTableViewManager/"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
