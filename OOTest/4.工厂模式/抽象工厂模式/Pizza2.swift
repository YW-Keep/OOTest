//
//  Pizza2.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 抽象工厂模式：
 提供一个接口，用于创建相关或依赖对象的家族，而不需要明确指定具体的类。
 情景： 披萨 不同的店铺材料不同的工厂运送
 
 */
class Pizza2: Pizza {
    var materialFactory = MaterialFactory()
    init(_ factory: MaterialFactory) {
        super.init()
        self.materialFactory = factory
    }
    override func prepare() {
        materialFactory.getFlour()
        materialFactory.getMeat()
        materialFactory.getOthers()
    }
}
