//
//  PizzaStore3.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 工厂方法模式：定义了一个创建对象的接口，由子类决定实例化哪一个。工厂方法让类实例化推迟到了子类。
 情景：
 披萨店开在不同地区，不同地区口味不同
 */

class PizzaStore3: NSObject {
    
    func orderPizza(_ type: String) -> Pizza {
        let pizza = createPizza(type: type)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
    func createPizza(type: String) -> Pizza {
        return Pizza()
    }
}
