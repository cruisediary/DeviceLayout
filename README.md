# DeviceLayout

![logo](README/logo.png)

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/cruisediary/DeviceLayout)
![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![CI Status](http://img.shields.io/travis/cruisediary/DeviceLayout.svg?style=flat)](https://travis-ci.org/cruisediary/DeviceLayout)
[![Version](https://img.shields.io/cocoapods/v/DeviceLayout.svg?style=flat)](http://cocoapods.org/pods/DeviceLayout)
[![License](https://img.shields.io/cocoapods/l/DeviceLayout.svg?style=flat)](http://cocoapods.org/pods/DeviceLayout)
[![Platform](https://img.shields.io/cocoapods/p/DeviceLayout.svg?style=flat)](http://cocoapods.org/pods/DeviceLayout)

**DeviceLayout** is a Swift framework that lets you set *Auto Layout* constraints's differently for each device

Using only `IBInspector` of Xcode to set up your constant per device size differently without any CODE :)

`@IBInspectable` make a migic with outh any CODE

Only 3 seconds you can set design guide and make designer happy  🚀

```swift
public enum Size: Int, Comparable {
    case unknownSize = 0
    /// iPhone 4, 4s, iPod Touch 4th gen.
    case screen3_5Inch
    /// iPhone 5, 5s, 5c, SE, iPod Touch 5-6th gen.
    case screen4Inch
    /// iPhone 6, 6s, 7, 8
    case screen4_7Inch
    /// iPhone 6+, 6s+, 7+, 8+
    case screen5_5Inch
    /// iPhone X, Xs
    case screen5_8Inch
    /// iPhone Xr
    case screen6_1Inch
    /// iPhone Xs Max
    case screen6_5Inch
    /// iPad Mini
    case screen7_9Inch
    /// iPad
    case screen9_7Inch
    /// iPad Pro (10.5-inch)
    case screen10_5Inch
    /// iPad Pro (11-inch)
    case screen11Inch
    /// iPad Pro (12.9-inch)
    case screen12_9Inch
}
```

## Example

#### First inherit your constraint to `DeviceLayoutConstraint`

![logo](README/screenshot1.png)

Second Set your own constant per device size and adjust your UI design guide

comparing `PSD`, `Sketch` or `Zeplin` UI Guide 

Make designer be happy :)

![logo](README/screenshot2.png)

## Requirements
- iOS 8.0+
- Swift 3+, 4+, 5+

## Installation

## 📲 Installation
DeviceLayout is available through [Cocoapods](http://cocoapods.org) or [Carthage](https://github.com/Carthage/Carthage)

```ruby
pod "DeviceLayout"
```

### Carthage
```
github "cruisediary/DeviceLayout" ~> 0.5.0
```

## Dependencies
* [Device](https://github.com/Ekhoo/Device) - Light weight tool for detecting the current device and screen size written in swift.

## 👨‍💻 Author

cruz, cruzdiary@gmail.com

## 🛡 License

DeviceLayout is available under the MIT license. See the LICENSE file for more info.
