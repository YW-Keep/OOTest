//
//  HZPizzaStroe2.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class HZPizzaStroe2: PizzaStore {
     func createPizza2(type: String) -> Pizza2 {
        let pizza = Pizza2(HZMaterialFactory())
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
