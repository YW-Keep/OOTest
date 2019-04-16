//
//  HZPizzaStore.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class HZPizzaStore: PizzaStore3 {
    override func createPizza(type: String) -> Pizza {
        var pizza = Pizza()
        if(type == "beef") {
            pizza = HZBeefPizza()
        } else if(type == "pork") {
            pizza = HZPorkPizza()
        }
        return pizza
    }
}
