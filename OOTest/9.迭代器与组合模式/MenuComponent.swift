//
//  MenuComponent.swift
//  OOTest
//
//  Created by tang on 2019/4/25.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class MenuComponent: Component {
    var menuArray: [Component] = []
    let name: String
    init(_ name: String) {
        self.name = name
    }
    override func addMenu(_ component: Component) {
        menuArray.append(component)
    }
    override func printInfo() {
        NSLog("菜单:%@",name)
        for component in menuArray {
            component.printInfo()
        }
    }
}
