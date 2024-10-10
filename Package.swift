// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "chatGPT",
    targets: [
        .executableTarget(
            name: "chatGPT",
            path: "Sources", // Indica dove si trovano i file sorgente
            resources: [
                .process("Resources") // Assicurati di includere l'intera cartella Resources
            ]
        )
    ]
)
