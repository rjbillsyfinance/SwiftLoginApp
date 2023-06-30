//
//  Package.swift
//  MyLoginApp
//
//  Created by Ronit Jain on 6/30/23.
//

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MyPackage",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sendgrid/sendgrid-swift.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "MyPackage",
            dependencies: ["SendGrid"]),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]),
    ]
)
