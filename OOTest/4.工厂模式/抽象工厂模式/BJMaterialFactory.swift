//
//  BJMaterialFactory.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class BJMaterialFactory: MaterialFactory {
    override func getFlour() {
        NSLog("BJfloyr")
    }
    override func getMeat() {
        NSLog("BJmeat")
    }
    override func getOthers() {
        NSLog("BJxxxx")
    }
}
