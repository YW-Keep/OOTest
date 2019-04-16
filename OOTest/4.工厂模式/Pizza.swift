//
//  Pizza.swift
//  OOTest
//
//  Created by tang on 2019/4/15.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 设计原则：
 要依赖抽象，不要依赖具体的类。
 工厂模式有三块下面分别讨论
 情景：顾客点单到披萨制作
 */

class Pizza: NSObject {
    var name = "pizza"
    func prepare() {
        NSLog("准备材料制作L：%@",name)
    }
    func bake() {
        NSLog("烤制")
    }
    func cut() {
        NSLog("切")
    }
    func box() {
        NSLog("盒装")
    }
}
