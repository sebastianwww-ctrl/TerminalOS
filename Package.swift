// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        // Satisfies xtool's "No library products" error
        .library(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        // Defined as 'target' to avoid executable conflicts
        .target(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
