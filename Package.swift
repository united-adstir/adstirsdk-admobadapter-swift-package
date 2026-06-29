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
            exact: "2.17.7"
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
            url: "https://dl.ad-stir.com/sdk/spm/2.17.7/AdMobMediationAdapterAdstirAds.xcframework.zip",
            checksum: "9ba182deb78356292d43cd07f1c1f6be47e47557bd5f8014b0aa6b497b73b758"
        ),
    ]
)
