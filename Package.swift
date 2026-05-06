// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "IDMPhotoBrowser",
    defaultLocalization: "en",    
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
        .package(url: "https://github.com/Mobiel-Bekeken/DACircularProgress.git", from: "2.3.2"),
        .package(url: "https://github.com/Mobiel-Bekeken/pop.git", from: "1.0.13"),    
],
    targets: [
        .target(
            name: "IDMPhotoBrowser",
            dependencies: [
                .product(name: "DACircularProgress", package: "DACircularProgress"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "pop", package: "pop")
            ],
            exclude: [
                "IDMPBLocalizations.bundle",
                "IDMPhotoBrowser.bundle",
            ],
            resources: [
                .process("IDMPBLocalizations.bundle"),
                .process("IDMPhotoBrowser.bundle")
            ],
            path: "Classes",
            publicHeadersPath: "."
        )
    ]
)
