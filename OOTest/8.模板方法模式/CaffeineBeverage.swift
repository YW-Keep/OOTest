//
//  CaffeineBeverage.swift
//  OOTest
//
//  Created by tang on 2019/4/22.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 设计原则：好莱坞原则：别找我，我会找你。
 通俗的话说，高层的可以依赖低层的，低层的尽量不依赖高层的。
 */

/*
 模板方法模式：
 在一个方法中定义一个算法的骨架，而将一些步骤延迟到子类中。模板方法使得子类可以在不改变算法结构的情况下，重新定义算法中的某些步骤。
 策略模式与模板方法模式都是在封装算法，一个用组合，一个用继承。
 情景：
 咖啡与茶的冲泡（都是咖啡因的饮料）
 */
class CaffeineBeverage: NSObject {
    func prepareRecipe() {
        self.boilWater()
        self.brew()
        self.pourCup()
        if(self.isNeedIngredients()) {
            self.addIngredients()
        }
        
    }
    func boilWater() {
        NSLog("boilWater")
    }
    
    func brew() {
        NSLog("brew - 需要子类实现")
    }
    
    func pourCup() {
        NSLog("pourCup")
    }
    
    func addIngredients() {
        NSLog("addiIngredients - 需要子类实现")
    }
    
    // 这就是一个钩子，可以实现是否需要配料
    func isNeedIngredients() -> Bool {
        return true
    }

}
