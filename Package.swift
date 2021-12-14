// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FlexLayout",
  products: [
    .library(name: "FlexLayout", targets: ["FlexLayout"]),
    .library(name: "FlexLayoutYoga", targets: ["FlexLayoutYoga"]),
    .library(name: "FlexLayoutYogaKit", targets: ["FlexLayoutYogaKit"])
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "FlexLayout",
      dependencies: ["FlexLayoutYoga", "FlexLayoutYogaKit"],
      path: "Sources/Swift",
      cSettings: [
      ],
      cxxSettings: [
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./")
      ],
      swiftSettings: [
      ]
    ),
    .target(
      name: "FlexLayoutYoga",
      dependencies: [],
      path: "Sources/yoga",
      cSettings: [
      ],
      cxxSettings: [
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./")
      ]
    ),
    .target(
      name: "FlexLayoutYogaKit",
      dependencies: ["FlexLayoutYoga"],
      path: "Sources/YogaKit",
      cSettings: [
      ],
      cxxSettings: [
        .headerSearchPath("include/YogaKit/"),
        .headerSearchPath("./")
      ]
    )
  ],
  cLanguageStandard: .gnu99,
  cxxLanguageStandard: .gnucxx11
)
