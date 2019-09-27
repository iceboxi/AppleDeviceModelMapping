//
//  ViewController.swift
//  AppleDeviceModelMapping
//
//  Created by iceboxi on 09/26/2019.
//  Copyright (c) 2019 iceboxi. All rights reserved.
//

import UIKit
import AppleDeviceModelMapping

class ViewController: UIViewController {
    @IBOutlet var modelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelLabel.text = AppleDevice.modelName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

