# FTIndicator-SPM

[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![Platform](https://img.shields.io/badge/platform-iOS%2013%2B-lightgrey.svg)](#requirements)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

A Swift Package Manager distribution of **FTIndicator**, a lightweight iOS UI library with three indicators:

- **Notification**: an in-app banner with an optional image, a tap handler and a completion handler
- **Progress HUD**: progress, success, info and error states
- **Toast**: a short message at the bottom of the screen

All three use a blur effect and support light and dark styles.

> This repository is a modified version of [FTIndicator](https://github.com/liufengting/FTIndicator) by Liu Fengting, released under the MIT License. The original copyright notice is kept in [LICENSE](LICENSE). See [Credits](#credits) for what changed.

## Requirements

- iOS 13.0+
- Xcode 13+ (Swift tools 5.5)

## Installation

### Swift Package Manager

In Xcode: **File → Add Package Dependencies...** and enter:

```
https://github.com/opendhihyperlocal/FTIndicator-SPM.git
```

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/opendhihyperlocal/FTIndicator-SPM.git", from: "1.0.0")
]
```

then add the product to your target:

```swift
.target(
    name: "YourApp",
    dependencies: [
        .product(name: "FTIndicator", package: "FTIndicator-SPM")
    ]
)
```

In an Xcode app project, just tick **FTIndicator** when Xcode asks which product to add.

```swift
import FTIndicator        // Swift
```

```objective-c
@import FTIndicator;      // Objective-C
```

## Usage (Swift)

### Progress HUD

```swift
FTIndicator.showProgress(withMessage: "Loading...")
FTIndicator.showProgress(withMessage: "Loading...", userInteractionEnable: false)

FTIndicator.showSuccess(withMessage: "Saved")
FTIndicator.showInfo(withMessage: "Heads up")
FTIndicator.showError(withMessage: "Something went wrong")

FTIndicator.dismissProgress()
```

### Notification

```swift
FTIndicator.showNotification(withTitle: "Title", message: "Message")

FTIndicator.showNotification(with: UIImage(named: "icon"),
                             title: "Title",
                             message: "Message",
                             tapHandler: {
                                 // user tapped the banner
                             },
                             completion: {
                                 // banner dismissed
                             })

FTIndicator.dismissNotification()
```

### Toast

```swift
FTIndicator.showToastMessage("Short toast")
FTIndicator.dismissToast()
```

### Style

```swift
FTIndicator.setIndicatorStyle(.dark)
FTIndicator.setIndicatorStyleToDefaultStyle()
```

## Usage (Objective-C)

```objective-c
[FTIndicator showProgressWithMessage:@"Loading..."];
[FTIndicator showSuccessWithMessage:@"Saved"];
[FTIndicator dismissProgress];

[FTIndicator showNotificationWithTitle:@"Title" message:@"Message"];
[FTIndicator showToastMessage:@"Short toast"];
```

`FTNotificationIndicator`, `FTProgressIndicator` and `FTToastIndicator` can also be used on their own. They are included in the same `FTIndicator` module.

## Credits

FTIndicator was originally written by **Liu Fengting** ([liufengting/FTIndicator](https://github.com/liufengting/FTIndicator)).

Changes in this repository:

- Added a Swift Package Manager manifest (`Package.swift`).
- Moved the public headers to `Sources/FTIndicator/include`.
- Declared `FTProgressIndicator.bundle` as a package resource, and changed the icon loading code to use `SWIFTPM_MODULE_BUNDLE`, so the success, info and error icons appear when installed with SPM.

## License

Released under the MIT License. See [LICENSE](LICENSE).

Copyright (c) 2016 Liu Fengting
