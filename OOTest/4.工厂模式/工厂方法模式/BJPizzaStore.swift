//
//  BJPizzaStore.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class BJPizzaStore: PizzaStore3 {
    override func createPizza(type: String) -> Pizza {
        var pizza = Pizza()
        if(type == "beef") {
            pizza = BJBeefPizza()
        } else if(type == "pork") {
            pizza = BJPorkPizza()
        }
        return pizza
    }
}
