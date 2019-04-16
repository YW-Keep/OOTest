//
//  PizzaFactory.swift
//  OOTest
//
//  Created by tang on 2019/4/15.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class PizzaFactory: NSObject {
    func creatPizza(type:String) -> Pizza {
        var pizza = Pizza()
        if(type == "beef") {
            pizza = BeefPizza()
        } else if(type == "pork") {
            pizza = PorkPizza()
        }
        return pizza
    }
}
