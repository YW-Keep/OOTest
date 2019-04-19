//
//  Turkey.swift
//  OOTest
//
//  Created by tang on 2019/4/19.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 适配器模式：
  将一个类的接口，转换成客户期望的另一个接口。适配器让原本接口不兼容的类可以合作无间。
 适配器模式实现方式有继承与组合两种，下面实现的是组合的方式
 情景：将一个火鸡适配成一直鸭子
 适配器将一个对象包装起来以改变其接口，装饰者将一个对象包装起来以增加新的行为和责任，而外观将一群对象”包装“起来以简化其接口。
 */
class Turkey: NSObject {
    func fly() {
        NSLog("Turkey Fly")
    }
    func gobble() {
        NSLog("gugugu")
    }
}
