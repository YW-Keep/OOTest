//
//  ViewController.swift
//  OOTest
//
//  Created by tang on 2019/4/10.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 策略模式测试
        let duck1 = Duck();
        duck1.fly()
        duck1.setFlyBehavier(newBehavior: AirFly())
        duck1.fly()
        
        let duck2 = RubberDuck();
        duck2.fly();
        NSLog("观察者模式--------")
        // 观察者模式测试
        let theme = Theme();
        let observer1 = OneObserver()
        let observer2 = TwoObserver()
        observer2.theme = theme
        theme.addMyObserver(observer: observer1)
        theme.addMyObserver(observer: observer2)
        theme.changeData(newData: "测试")
        theme.removeMyObserver(observer: observer2)
        theme.changeData(newData: "再次测试")
        
        
        NSLog("装饰者模式--------")
        var myDrink: Beverages = Coffee()
        myDrink = RedBean(beverage: myDrink)
        myDrink = Milk(beverage: myDrink)
        NSLog("name %@, price=%d",myDrink.getBeveragesName(),myDrink.cost())
        
        
        // Do any additional setup after loading the view.
    }


}

