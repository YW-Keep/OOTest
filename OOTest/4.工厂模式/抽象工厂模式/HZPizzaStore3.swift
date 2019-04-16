//
//  HZPizzaSTore3.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class HZPizzaStore3: PizzaStore {
    func createPizza2(type: String) -> Pizza2 {
        let pizza = Pizza2(BJMaterialFactory())
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
