//
//  NewWaiter.swift
//  OOTest
//
//  Created by tang on 2019/4/25.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class NewWaiter: NSObject {
    let menu: Component
    init(_ menu: Component) {
        self.menu = menu
    }
    func printInfo() {
        self.menu.printInfo()
    }
}
