//
//  UIDevice+Extension.swift
//  AppleDeviceMapping
//
//  Created by Adolph on 2019/9/26.
//  Copyright © 2019 iceboxidev. All rights reserved.
//

import UIKit

public extension UIDevice {
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
              
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        guard let filePath = Bundle.myModule.path(forResource: "DeviceModelMapping", ofType: "plist") else { return identifier }
        guard let modelList = NSDictionary(contentsOfFile: filePath) else { return identifier }
  
        return (modelList.value(forKey: identifier) as? String) ?? identifier
    }
}

import class Foundation.Bundle

fileprivate extension Foundation.Bundle {
    /// Returns the resource bundle associated with the current Swift module.
    static var myModule: Bundle = {
        let bundleName = "AppleDeviceModelMapping_AppleDeviceModelMapping"

        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: AppleDevice.self).resourceURL,
            Bundle.main.bundleURL,
        ]

        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        fatalError("unable to find bundle named TUScanner_TUScanner")
    }()
}
