//
//  RubberDuck.swift
//  OOTest
//
//  Created by tang on 2019/4/10.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class RubberDuck: Duck {
    override init() {
        super.init()
        self.flyBehavior = NoFly()
    }
}
