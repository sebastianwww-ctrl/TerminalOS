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
        // Using '.target' instead of '.executableTarget' stops the conflict
        .target(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
