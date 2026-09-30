// swift-tools-version: 5.9

import PackageDescription

let binaryTargets = [
    "App",
    "Flutter",
    "FlutterPluginRegistrant",
    "camera_avfoundation",
    "connectivity_plus",
    "device_info_plus",
    "empactit_wifi",
    "geocoding_darwin",
    "mobile_scanner",
    "objective_c",
    "pay_ios",
    "permission_handler_apple",
    "shared_preferences_foundation",
    "sqflite_darwin",
    "store_redirect",
    "url_launcher_ios",
    "webview_flutter_wkwebview",
    "wifi_iot",
    "wifi_scan",
]

let package = Package(
    name: "RodeoCarnivalSP",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "RodeoCarnivalSP",
            targets: ["RodeoCarnivalSP"]
        ),
    ],
    targets: [
        .target(
            name: "RodeoCarnivalSP",
            dependencies: binaryTargets.map { .target(name: $0) },
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        ),
    ] + binaryTargets.map {
        .binaryTarget(
            name: $0,
            path: "Sources/binaryFrameworks/Debug/\($0).xcframework"
        )
    } + [
        .testTarget(
            name: "RodeoCarnivalSPTests",
            dependencies: ["RodeoCarnivalSP"]
        ),
    ]
)
