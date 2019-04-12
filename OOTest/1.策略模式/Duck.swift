//
//  Duck.swift
//  OOTest
//
//  Created by tang on 2019/4/10.
//  Copyright © 2019 tang. All rights reserved.
//

/*
 
 OO设计基础:
 抽象 封装 多态 继承
 设计原则：
 找出应用中可能需要变化之处，把它们独立出来，不要和那些不需要变化的代码混在一起。
 针对接口变成，而不是针对实现编程。（针对接口变成真正的意思是针对超类型编程）
 多用组合，少用继承。

 */

/*
 
 策略模式：
 定义了算法族，分别分装起来，让他们之间可以相互替换，此模式让算法的变化独立于使用算法的客户
 情景：
 我们有个鸭子类，鸭子有个鸭子的基类，定义了一些共有的方法，比如颜色等等。
 鸭子有一个行为叫做飞。
 但是不是所有鸭子都会飞，比如塑料鸭不会飞。比如喷气鸭飞的方式不一。
 这里我们就用策略模式，定义飞的行为。
 这样还有个好处就是可以修改这个行为进行动态改变飞的情况
 
 */

import UIKit

class Duck: NSObject {
    var color: UIColor = .yellow
    var flyBehavior: FlyBehavior = FlyBehavior()
    
    func fly(){
        self.flyBehavior.fly()
    }
    func setFlyBehavier(newBehavior: FlyBehavior ){
        self.flyBehavior = newBehavior
    }
}
