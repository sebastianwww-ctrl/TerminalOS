// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        // xtool 2026 uses the executable product to generate the app bundle
        .executable(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        .executableTarget(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
