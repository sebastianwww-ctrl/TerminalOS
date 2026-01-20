// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [.executable(name: "TerminalOS", targets: ["TerminalOS"])],
    targets: [
        .executableTarget(
            name: "TerminalOS",
            path: "Sources/TerminalOS" // This must match the folder name
        )
    ]
)
