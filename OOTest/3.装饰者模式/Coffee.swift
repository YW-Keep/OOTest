//
//  Coffee.swift
//  OOTest
//
//  Created by tang on 2019/4/12.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class Coffee: Beverages {
    override init() {
        super.init()
        name = "coffee";
    }
    override func cost() -> Int {
        return 2;
    }
}
