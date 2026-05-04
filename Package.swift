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
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.1.0"),        
        .package(url: "https://github.com/danielamitay/DACircularProgress.git", exact: "2.3.1"),
        .package(url: "https://github.com/facebookarchive/pop.git", exact: "1.0.11")
    ],
    targets: [
        .target(
            name: "IDMPhotoBrowser",
            path: "Classes",
            publicHeadersPath: "."
        )
    ]
)
