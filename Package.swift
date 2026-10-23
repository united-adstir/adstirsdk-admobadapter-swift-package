// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdstirSDKAdMobAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdstirAdsAdMobAdapter",
            targets: ["AdstirAdsAdMobAdapterTarget"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            "12.0.0"..<"14.0.0"
        ),
        .package(
            url: "https://github.com/united-adstir/adstirsdk-swift-package.git",
            exact: "2.17.9"
        )
    ],
    targets: [
        .target(
            name: "AdstirAdsAdMobAdapterTarget",
            dependencies: [
                .target(name: "AdstirAdsAdMobAdapter"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "AdstirAds", package: "adstirsdk-swift-package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdstirAdsAdMobAdapter",
            url: "https://dl.ad-stir.com/sdk/spm/2.17.9/AdMobMediationAdapterAdstirAds.xcframework.zip",
            checksum: "7d044fdea9fbb9550c62d2be77681b85e68aa05fd84219891069b8dba481095d"
        ),
    ]
)
