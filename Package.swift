// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let checksum = "678df5bce7478060b0fe9490bf7ed10d6fd96eb024890943b51b265504809bb7"
let version = "2.6.0"
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
        //.package(url: "https://github.com/fingerprintjs/fingerprintjs-pro-ios", from: "2.6.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RodeoCarnivalSP",
            dependencies: [
                .target(name: "wifi_iot"),
                .target(name: "permission_handler_apple"),
                .target(name: "path_provider_foundation"),
                .target(name: "camera_avfoundation"),
                .target(name: "device_info_plus"),
                .target(name: "geocoding_ios"),
                .target(name: "wifi_scan"),
                //.target(name: "FMDB"),
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
                .target(name: "fpjs_pro_plugin"),
                .target(name: "empactit_wifi"),
                .target(name: "App"),
                .target(name: "Flutter")
            ]),
        .binaryTarget(
                    name: "wifi_iot",
                    path: "./Sources/binaryFrameworks/Debug/wifi_iot.xcframework"
                ),
        .binaryTarget(
                    name: "permission_handler_apple",
                    path: "./Sources/binaryFrameworks/Debug/permission_handler_apple.xcframework"
                ),
        .binaryTarget(
                    name: "path_provider_foundation",
                    path: "./Sources/binaryFrameworks/Debug/path_provider_foundation.xcframework"
                ),
        .binaryTarget(
                    name: "camera_avfoundation",
                    path: "./Sources/binaryFrameworks/Debug/camera_avfoundation.xcframework"
                ),
        .binaryTarget(
                    name: "device_info_plus",
                    path: "./Sources/binaryFrameworks/Debug/device_info_plus.xcframework"
                ),
        .binaryTarget(
                    name: "geocoding_ios",
                    path: "./Sources/binaryFrameworks/Debug/geocoding_ios.xcframework"
                ),
        .binaryTarget(
                    name: "wifi_scan",
                    path: "./Sources/binaryFrameworks/Debug/wifi_scan.xcframework"
                ),
       /* .binaryTarget(
                    name: "FMDB",
                    path: "./Sources/binaryFrameworks/Debug/FMDB.xcframework"
                ),*/
        .binaryTarget(
                    name: "shared_preferences_foundation",
                    path: "./Sources/binaryFrameworks/Debug/shared_preferences_foundation.xcframework"
                ),
        .binaryTarget(
                    name: "webview_flutter_wkwebview",
                    path: "./Sources/binaryFrameworks/Debug/webview_flutter_wkwebview.xcframework"
                ),
        .binaryTarget(
                    name: "launch_review",
                    path: "./Sources/binaryFrameworks/Debug/launch_review.xcframework"
                ),
        .binaryTarget(
                    name: "sqflite",
                    path: "./Sources/binaryFrameworks/Debug/sqflite.xcframework"
                ),
        .binaryTarget(
                    name: "Reachability",
                    path: "./Sources/binaryFrameworks/Debug/Reachability.xcframework"
                ),
        .binaryTarget(
                    name: "store_redirect",
                    path: "./Sources/binaryFrameworks/Debug/store_redirect.xcframework"
                ),
        .binaryTarget(
                    name: "connectivity_plus",
                    path: "./Sources/binaryFrameworks/Debug/connectivity_plus.xcframework"
                ),
        .binaryTarget(
                    name: "pay_ios",
                    path: "./Sources/binaryFrameworks/Debug/pay_ios.xcframework"
                ),
        .binaryTarget(
                    name: "FlutterPluginRegistrant",
                    path: "./Sources/binaryFrameworks/Debug/FlutterPluginRegistrant.xcframework"
                ),
        .binaryTarget(
                    name: "url_launcher_ios",
                    path: "./Sources/binaryFrameworks/Debug/url_launcher_ios.xcframework"
                ),
        .binaryTarget(
                    name: "MTBBarcodeScanner",
                    path: "./Sources/binaryFrameworks/Debug/MTBBarcodeScanner.xcframework"
                ),
        .binaryTarget(
                    name: "qr_code_scanner",
                    path: "./Sources/binaryFrameworks/Debug/qr_code_scanner.xcframework"
                ),
        /*.binaryTarget(
                    name: "fpjs_pro_plugin",
                    path: "./Sources/binaryFrameworks/Debug/fpjs_pro_plugin.xcframework"
                ),*/
        .binaryTarget(
            name: "fpjs_pro_plugin",
            url: "https://fpjs-public.s3.amazonaws.com/ios/\(version)/FingerprintPro-\(version)-\(checksum).xcframework.zip",
            checksum: checksum
        ),
        .binaryTarget(
                    name: "empactit_wifi",
                    path: "./Sources/binaryFrameworks/Debug/empactit_wifi.xcframework"
                ),
        .binaryTarget(
                    name: "App",
                    path: "./Sources/binaryFrameworks/Debug/App.xcframework"
                ),
        .binaryTarget(
                    name: "Flutter",
                    path: "./Sources/binaryFrameworks/Debug/Flutter.xcframework"
                ),
        
        .testTarget(
            name: "RodeoCarnivalSPTests",
            dependencies: ["RodeoCarnivalSP"]),
    ]
)
