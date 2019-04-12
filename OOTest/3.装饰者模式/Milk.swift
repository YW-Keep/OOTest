//
//  Milk.swift
//  OOTest
//
//  Created by tang on 2019/4/12.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class Milk: Beverages {
    var beverage: Beverages
    init(beverage: Beverages) {
        self.beverage = beverage
        super.init()
    }
    override func cost() -> Int {
        return self.beverage.cost() + 2
    }
    override func getBeveragesName() -> String {
        return self.beverage.getBeveragesName() + " add milk"
    }
}
