//
//  Beverages.swift
//  OOTest
//
//  Created by tang on 2019/4/12.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 设计原则：
 类应该对扩展开放，对修改关闭
 装饰者模式：
 动态的将责任附加到对象上。要扩展功能装饰者提供了比继承更有弹性的替代方案。
 情景：
 咖啡店，有各种饮料，需要在饮料里加各种配料
 */
class Beverages: NSObject {
    var name = ""
    func cost() -> Int {
        return 0;
    }
    func getBeveragesName()-> String {
        return self.name;
    }
}
