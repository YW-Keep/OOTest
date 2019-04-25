//
//  Waiter.swift
//  OOTest
//
//  Created by tang on 2019/4/24.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class Waiter: NSObject {
    let menus:[Menu]
    init(_ menus: [Menu]) {
        self.menus = menus;
    }
    
    func printMenus() {
        for menu in menus {
            printMenuItem(menu.creatIterator())
        }
    }
    
    func printMenuItem(_ iterator: Iterator) {
        while (iterator.haveNext()) {
            let item = iterator.next();
            item.printInfo()
        }
    }
}
