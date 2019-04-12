//
//  NoFly.swift
//  OOTest
//
//  Created by tang on 2019/4/10.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class NoFly: FlyBehavior {
    override func fly() {
        NSLog("can not fly")
    }
}
