//
//  TurkeyAdapter.swift
//  OOTest
//
//  Created by tang on 2019/4/19.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class TurkeyAdapter: Duck {
    let turkey: Turkey
    init(_ turkey: Turkey) {
        self.turkey = turkey
    }
    override func fly() {
        turkey.fly()
    }
    override func quack() {
        turkey.gobble()
    }
}
