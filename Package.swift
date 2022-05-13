// swift-tools-version:5.6
import PackageDescription
let package = Package(
    name: "EuclidWebGLDemo",
    products: [
        .executable(name: "EuclidWebGLDemo", targets: ["EuclidWebGLDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", branch: "maxd/optional-constructor"),
        .package(url: "https://github.com/swiftwasm/WebAPIKit.git", branch: "maxd/optional-constructor"),
        .package(url: "https://github.com/nicklockwood/Euclid.git", branch: "develop"),
    ],
    targets: [
        .executableTarget(
            name: "EuclidWebGLDemo",
            dependencies: [
                "WebAPIKit",
                "Euclid",
            ]
        ),
    ]
)
