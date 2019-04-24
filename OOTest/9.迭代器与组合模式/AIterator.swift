//
//  AIterator.swift
//  OOTest
//
//  Created by tang on 2019/4/24.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class AIterator: Iterator {
    let listArray:[MenuItem]
    var num = 0;
    init(_ menuItems : [MenuItem]) {
        self.listArray = menuItems;
    }
    override func haveNext() -> Bool {
        return num < listArray.count
    }
    override func next() -> MenuItem {
        let item = listArray[num]
        num += 1
        return item;
    }
}
