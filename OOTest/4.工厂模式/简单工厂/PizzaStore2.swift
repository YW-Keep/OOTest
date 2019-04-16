//
//  PizzaStore2.swift
//  OOTest
//
//  Created by tang on 2019/4/15.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 简单工厂（不算设计模式）：
 把所有的事（主要是创建）放在一个类处理
 情景：
 披萨有不同的口味
 */
 
class PizzaStore2: Pizza {
    let pizzaFactory = PizzaFactory()
    func orderPizza(_ type:String) -> Pizza {
        let pizza = pizzaFactory.creatPizza(type: type)
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
