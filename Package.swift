// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        // We define it as a library so SPM is happy
        .library(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        // We define it as a regular target (not executableTarget)
        .target(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
