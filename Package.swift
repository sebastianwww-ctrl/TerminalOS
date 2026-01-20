// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        // 2026 FIX: Vend both so xtool sees a library to build and an app to run
        .library(name: "TerminalOSLib", targets: ["TerminalOS"]),
        .executable(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        .executableTarget(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
