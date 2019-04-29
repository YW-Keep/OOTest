//
//  CandyMachine.swift
//  OOTest
//
//  Created by tang on 2019/4/26.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 状态模式：
 允许对象在内部状态改变时改变它的行为，对象看起来好像修改了它的类。
 情景：
 自动售卖糖果机： 有四个状态 1.没有钱  2. 有钱  3.出售糖果  4.糖果售罄
 有四个动作： 1.投入钱 2.退回钱 3.转动曲柄 4.发放糖果
 */


class CandyMachine: NSObject {
    lazy var state : State = {
       return self.count > 0 ? self.noMoney :self.noCandy
    }()
    var count : Int
    
    lazy var noMoney = {
        return NoMoney(self)
    }()
    
    lazy var haveMoney = {
        return HaveMoney(self)
    }()
    
    lazy var payCandy = {
        return PayCandy(self)
    }()
    
    lazy var noCandy = {
        return NoCandy(self)
    }()
    
    init(_ canyCount: Int) {
        self.count = canyCount
        super.init()
    }
    
    func inputMoney() {
       self.state.inputMoney()
    }
    
    func outputMoney() {
        self.state.outputMoney()
    }
    
    func turnButton() {
        self.state.turnButton()
    }
    func pushCandy() {
        self.state.pushCandy()
    }
    
    func reduceCandy() {
        if(self.count > 0) {
            self.count -= 1
        }
    }
}
