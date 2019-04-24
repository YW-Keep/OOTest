//
//  Menu.swift
//  OOTest
//
//  Created by tang on 2019/4/24.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class MenuItem: NSObject {
    let name: String
    let price: String
    init(_ name: String,_ price: String) {
        self.name = name
        self.price = price
    }
}
