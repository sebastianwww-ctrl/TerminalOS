// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        // This satisfies the "No library products" error
        .library(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        // Use '.target', NOT '.executableTarget'
        .target(
            name: "TerminalOS",
            path: "Sources/TerminalOS"
        )
    ]
)
