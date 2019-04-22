//
//  Caffe.swift
//  OOTest
//
//  Created by tang on 2019/4/22.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class Caffe: CaffeineBeverage {
    var isNeedMilk = true
    override func brew() {
        NSLog("brew caffe")
    }
    override func addIngredients() {
        NSLog("add milk")
    }
    override func isNeedIngredients() -> Bool {
        return isNeedMilk
    }
}
