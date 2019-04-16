//
//  HZMaterialFactory.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class HZMaterialFactory: MaterialFactory {
    override func getFlour() {
        NSLog("HZfloyr")
    }
    override func getMeat() {
        NSLog("HZmeat")
    }
    override func getOthers() {
        NSLog("HZxxxx")
    }
}
