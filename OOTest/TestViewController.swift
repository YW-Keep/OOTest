//
//  TestViewController.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

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
        
        
        NSLog("工厂模式--------")
        // 简单工厂
        let store1 = PizzaStore2();
        _ = store1.orderPizza("beef")
        // 工厂方法模式
        let store2 = HZPizzaStore()
        _ = store2.orderPizza("pork")
        let store3 = BJPizzaStore()
        _ = store3.orderPizza("beef")
        
        // 抽象工厂模式
        let store4 = HZPizzaStroe2()
        _ = store4.createPizza2(type: "");
        let store5 = HZPizzaStore3()
        _ = store5.createPizza2(type: "");
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}