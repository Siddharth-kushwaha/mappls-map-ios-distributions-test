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
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-map/MapplsMap.xcframework-6.0.1.zip",
            checksum: "1a16dd71b34e8f8219c48b07048c3a8605af2a3bc947c78a3ef0863d3a54c3df"
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
