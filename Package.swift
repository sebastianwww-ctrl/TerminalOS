// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v16)],
    products: [.executable(name: "TerminalOS", targets: ["TerminalOS"])],
    targets: [
        .executableTarget(
            name: "TerminalOS",
            path: "Sources"
        )
    ]
)
