//
//  AMenu.swift
//  OOTest
//
//  Created by tang on 2019/4/24.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class AMenu: Menu {
    var menuArray: [MenuItem] = []
    override func addMenu(_ menuItem: MenuItem) {
        menuArray.append(menuItem)
    }
    override func creatIterator() -> Iterator {
        return AIterator(menuArray)
    }
}
