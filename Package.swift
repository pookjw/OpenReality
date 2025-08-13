// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenReality",
    platforms: [
        .visionOS(.v26)
    ],
    products: [
        .library(
            name: "OpenRealityFoundation",
            targets: ["OpenRealityFoundation"]
        ),
        .library(
            name: "OpenRealityKit",
            targets: ["OpenRealityKit"]
        ),
        .library(
            name: "_OpenRealityKit_SwiftUI",
            targets: ["_OpenRealityKit_SwiftUI"]
        )
    ],
    targets: [
        .target(
            name: "__CoreREExterns",
            dependencies: [
                .byName(name: "CoreRE")
            ],
            swiftSettings: [
                .enableExperimentalFeature("Extern")
            ]
        ),
        .target(
            name: "__RealityKitSwiftUIShims",
            dependencies: [
                .byName(name: "OpenRealityFoundation"),
                .byName(name: "_SwiftUIPrivate"),
                .byName(name: "MRUIKit"),
                .byName(name: "AttributeGraph")
            ]
        ),
        .target(
            name: "_OpenRealityKit_SwiftUI",
            dependencies: [
                .byName(name: "__RealityKitSwiftUIShims"),
                .byName(name: "_SwiftUIPrivate")
            ]
        ),
        .target(
            name: "OpenRealityFoundation"
        ),
        .target(
            name: "OpenRealityKit",
            dependencies: [
            ]
        ),
        .binaryTarget(
            name: "CoreRE",
            path: "CoreRE.xcframework"
        ),
        .binaryTarget(
            name: "MRUIKit",
            path: "MRUIKit.xcframework"
        ),
        .binaryTarget(
            name: "_SwiftUIPrivate",
            path: "_SwiftUIPrivate.xcframework"
        ),
        .binaryTarget(
            name: "AttributeGraph",
            path: "AttributeGraph.xcframework"
        )
    ]
)
