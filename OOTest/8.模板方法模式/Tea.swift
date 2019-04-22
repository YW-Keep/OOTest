//
//  Tea.swift
//  OOTest
//
//  Created by tang on 2019/4/22.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class Tea: CaffeineBeverage {
    override func brew() {
        NSLog("brew tea")
    }
    override func addIngredients() {
        NSLog("add lemon")
    }
}
