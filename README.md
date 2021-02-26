# AppleDeviceModelMapping

[![CI Status](https://img.shields.io/travis/iceboxi/AppleDeviceModelMapping.svg?style=flat)](https://travis-ci.org/iceboxi/AppleDeviceModelMapping)
[![Version](https://img.shields.io/cocoapods/v/AppleDeviceModelMapping.svg?style=flat)](https://cocoapods.org/pods/AppleDeviceModelMapping)
[![License](https://img.shields.io/cocoapods/l/AppleDeviceModelMapping.svg?style=flat)](https://cocoapods.org/pods/AppleDeviceModelMapping)
[![Platform](https://img.shields.io/cocoapods/p/AppleDeviceModelMapping.svg?style=flat)](https://cocoapods.org/pods/AppleDeviceModelMapping)


Mapping Appple device identify with model name. Like iPhone1,1 as iPhone and iPad11,4 as iPad Air 3rd Gen and etc.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

````
import AppleDeviceModelMapping
...
let modelName = AppleDevice.modelName
...
````

## Requirements

## Installation

AppleDeviceModelMapping is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AppleDeviceModelMapping'
```

## Feature

1. try to scan [everyi](https://everyi.com/by-identifier/ipod-iphone-ipad-specs-by-model-identifier.html) or [wiki](https://www.theiphonewiki.com/wiki/Models) for auto-update

complete, you can generate a new plist when identify update in wiki with [this gist](https://gist.github.com/iceboxi/2a72d42f8aec4694a1d9e52076b1e6d8)

## Author

iceboxi, iceboxidev@gmail.com


## Others

The device model mapping list is [there](https://github.com/iceboxi/AppleDeviceModelMapping/blob/master/AppleDeviceModelMapping/Assets/DeviceModelMapping.plist)

Welcome any feedback with issue or PR.

## License

AppleDeviceModelMapping is available under the MIT license. See the LICENSE file for more info.


