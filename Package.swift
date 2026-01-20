// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "TerminalOS",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "TerminalOSLib", targets: ["TerminalOSLib"]),
        .executable(name: "TerminalOS", targets: ["TerminalOS"])
    ],
    targets: [
        .target(name: "TerminalOSLib", path: "Sources/TerminalOSLib"),
        .executableTarget(name: "TerminalOS", dependencies: ["TerminalOSLib"], path: "Sources/TerminalOS")
    ]
)

