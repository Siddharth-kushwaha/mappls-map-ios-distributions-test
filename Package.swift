// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsMap",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsMap", targets: ["MapplsMap"])
    ],
    dependencies: [
        
    ],
    targets: [
        .binaryTarget(
            name: "MapplsMap",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-map-move/MapplsMap.xcframework-6.1.5.zip",
            checksum: "277414d9d4d9d29552656184b228a29dfcbb0efce380370712c04281496e135c"
        )
    ]
)
