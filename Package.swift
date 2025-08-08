// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsMap",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsMap", targets: ["MapplsMapCore"])
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "MapplsMap",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-map/MapplsMap.xcframework-6.1.0.zip",
            checksum: "bca56f3e5a7b82851dddbfc48326d700aa42d0b99096ee22c17039e8875d3cbf"
        ),
        .target(
            name: "MapplsMapCore",
            dependencies: [
                "MapplsMap"
            ],
            path: "Sources/MapplsMapCore"
        ),

    ]
)
