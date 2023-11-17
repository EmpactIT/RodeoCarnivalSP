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
            targets: ["RodeoCarnivalSP","permission_handler_apple"]),
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
            dependencies: []),
        .binaryTarget(
                    name: "permission_handler_apple",
                    path: "binaryFrameworks/Release/permission_handler_apple.xcframework"
                ),
        .binaryTarget(
                    name: "path_provider_foundation",
                    path: "binaryFrameworks/Release/path_provider_foundation.xcframework"
                ),
        .binaryTarget(
                    name: "camera_avfoundation",
                    path: "binaryFrameworks/Release/camera_avfoundation.xcframework"
                ),
        .binaryTarget(
                    name: "geocoding_ios",
                    path: "binaryFrameworks/Release/geocoding_ios.xcframework"
                ),
        .binaryTarget(
                    name: "FMDB",
                    path: "binaryFrameworks/Release/FMDB.xcframework"
                ),
        .binaryTarget(
                    name: "shared_preferences_foundation",
                    path: "binaryFrameworks/Release/shared_preferences_foundation.xcframework"
                ),
        .binaryTarget(
                    name: "webview_flutter_wkwebview",
                    path: "binaryFrameworks/Release/webview_flutter_wkwebview.xcframework"
                ),
        .binaryTarget(
                    name: "launch_review",
                    path: "binaryFrameworks/Release/launch_review.xcframework"
                ),
        .binaryTarget(
                    name: "sqflite",
                    path: "binaryFrameworks/Release/sqflite.xcframework"
                ),
        .binaryTarget(
                    name: "Reachability",
                    path: "binaryFrameworks/Release/Reachability.xcframework"
                ),
        .binaryTarget(
                    name: "store_redirect",
                    path: "binaryFrameworks/Release/store_redirect.xcframework"
                ),
        .binaryTarget(
                    name: "connectivity_plus",
                    path: "binaryFrameworks/Release/connectivity_plus.xcframework"
                ),
        .binaryTarget(
                    name: "pay_ios",
                    path: "binaryFrameworks/Release/pay_ios.xcframework"
                ),
        .binaryTarget(
                    name: "FlutterPluginRegistrant",
                    path: "binaryFrameworks/Release/FlutterPluginRegistrant.xcframework"
                ),
        .binaryTarget(
                    name: "url_launcher_ios",
                    path: "binaryFrameworks/Release/url_launcher_ios.xcframework"
                ),
        .binaryTarget(
                    name: "MTBBarcodeScanner",
                    path: "binaryFrameworks/Release/MTBBarcodeScanner.xcframework"
                ),
        .binaryTarget(
                    name: "qr_code_scanner",
                    path: "binaryFrameworks/Release/qr_code_scanner.xcframework"
                ),
        .binaryTarget(
                    name: "App",
                    path: "binaryFrameworks/Release/App.xcframework"
                ),
        .binaryTarget(
                    name: "Flutter",
                    path: "binaryFrameworks/Release/Flutter.xcframework"
                ),
        
        .testTarget(
            name: "RodeoCarnivalSPTests",
            dependencies: ["RodeoCarnivalSP"]),
    ]
)
