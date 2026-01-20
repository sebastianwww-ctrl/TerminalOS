// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        // 2026 Fix: Only one executable product. No library.
        .executable(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        .executableTarget(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
