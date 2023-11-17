// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RodeoCarnivalSP",
    platforms: [
           .iOS(.v14)
       ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RodeoCarnivalSP",
            targets: ["RodeoCarnivalSP"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RodeoCarnivalSP",
            dependencies: [
                .target(name: "permission_handler_apple"),
                .target(name: "path_provider_foundation"),
                .target(name: "camera_avfoundation"),
                .target(name: "geocoding_ios"),
                .target(name: "FMDB"),
                .target(name: "shared_preferences_foundation"),
                .target(name: "webview_flutter_wkwebview"),
                .target(name: "launch_review"),
                .target(name: "sqflite"),
                .target(name: "Reachability"),
                .target(name: "store_redirect"),
                .target(name: "connectivity_plus"),
                .target(name: "pay_ios"),
                .target(name: "FlutterPluginRegistrant"),
                .target(name: "url_launcher_ios"),
                .target(name: "MTBBarcodeScanner"),
                .target(name: "qr_code_scanner"),
                .target(name: "App"),
                .target(name: "Flutter")
            ]),
        .binaryTarget(
                    name: "permission_handler_apple",
                    path: "./Sources/binaryFrameworks/Release/permission_handler_apple.xcframework"
                ),
        .binaryTarget(
                    name: "path_provider_foundation",
                    path: "./Sources/binaryFrameworks/Release/path_provider_foundation.xcframework"
                ),
        .binaryTarget(
                    name: "camera_avfoundation",
                    path: "./Sources/binaryFrameworks/Release/camera_avfoundation.xcframework"
                ),
        .binaryTarget(
                    name: "geocoding_ios",
                    path: "./Sources/binaryFrameworks/Release/geocoding_ios.xcframework"
                ),
        .binaryTarget(
                    name: "FMDB",
                    path: "./Sources/binaryFrameworks/Release/FMDB.xcframework"
                ),
        .binaryTarget(
                    name: "shared_preferences_foundation",
                    path: "./Sources/binaryFrameworks/Release/shared_preferences_foundation.xcframework"
                ),
        .binaryTarget(
                    name: "webview_flutter_wkwebview",
                    path: "./Sources/binaryFrameworks/Release/webview_flutter_wkwebview.xcframework"
                ),
        .binaryTarget(
                    name: "launch_review",
                    path: "./Sources/binaryFrameworks/Release/launch_review.xcframework"
                ),
        .binaryTarget(
                    name: "sqflite",
                    path: "./Sources/binaryFrameworks/Release/sqflite.xcframework"
                ),
        .binaryTarget(
                    name: "Reachability",
                    path: "./Sources/binaryFrameworks/Release/Reachability.xcframework"
                ),
        .binaryTarget(
                    name: "store_redirect",
                    path: "./Sources/binaryFrameworks/Release/store_redirect.xcframework"
                ),
        .binaryTarget(
                    name: "connectivity_plus",
                    path: "./Sources/binaryFrameworks/Release/connectivity_plus.xcframework"
                ),
        .binaryTarget(
                    name: "pay_ios",
                    path: "./Sources/binaryFrameworks/Release/pay_ios.xcframework"
                ),
        .binaryTarget(
                    name: "FlutterPluginRegistrant",
                    path: "./Sources/binaryFrameworks/Release/FlutterPluginRegistrant.xcframework"
                ),
        .binaryTarget(
                    name: "url_launcher_ios",
                    path: "./Sources/binaryFrameworks/Release/url_launcher_ios.xcframework"
                ),
        .binaryTarget(
                    name: "MTBBarcodeScanner",
                    path: "./Sources/binaryFrameworks/Release/MTBBarcodeScanner.xcframework"
                ),
        .binaryTarget(
                    name: "qr_code_scanner",
                    path: "./Sources/binaryFrameworks/Release/qr_code_scanner.xcframework"
                ),
        .binaryTarget(
                    name: "App",
                    path: "./Sources/binaryFrameworks/Release/App.xcframework"
                ),
        .binaryTarget(
                    name: "Flutter",
                    path: "./Sources/binaryFrameworks/Release/Flutter.xcframework"
                ),
        
        .testTarget(
            name: "RodeoCarnivalSPTests",
            dependencies: ["RodeoCarnivalSP"]),
    ]
)
