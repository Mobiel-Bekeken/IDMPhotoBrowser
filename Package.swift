// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "IDMPhotoBrowser",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IDMPhotoBrowser",
            targets: ["IDMPhotoBrowser"]
        ),
    ],
    targets: [
        .target(
            name: "IDMPhotoBrowser",
            path: "Classes",
            publicHeadersPath: "."
        )
    ]
)
