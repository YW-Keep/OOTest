//
//  Light.swift
//  OOTest
//
//  Created by tang on 2019/4/17.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class Light: NSObject {
    var name:String
    override init() {
        name = "light"
    }
    func lightOn() {
        NSLog("%@ on", name)
    }
    func lightOff() {
        NSLog("%@ off", name)
    }
}
