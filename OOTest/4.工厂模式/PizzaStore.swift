//
//  PizzaStore.swift
//  OOTest
//
//  Created by tang on 2019/4/15.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class PizzaStore: NSObject {
    func orderPizza(type:String) -> Pizza {
        var pizza = Pizza()
        if(type == "beef") {
            pizza = BeefPizza()
        } else if(type == "pork") {
            pizza = PorkPizza()
        }
        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()
        return pizza
    }
}
