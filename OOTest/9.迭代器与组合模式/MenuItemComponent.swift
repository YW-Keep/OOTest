//
//  MenuItemComponent.swift
//  OOTest
//
//  Created by tang on 2019/4/25.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class MenuItemComponent: Component {
    let name: String
    let price: String
    init(_ name: String,_ price: String) {
        self.name = name
        self.price = price
    }
    override func getItemName() -> String {
        return self.name;
    }
    override func getItemPrice() -> String {
        return "¥" + self.price;
    }
    override func printInfo() {
        NSLog("%@,%@",self.getItemName(),self.getItemPrice())
    }
}
