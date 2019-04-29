//
//  NoMoney.swift
//  OOTest
//
//  Created by tang on 2019/4/26.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class NoMoney: State {
    override func inputMoney() {
        NSLog("收到了钱")
        self.machine!.state = self.machine!.haveMoney
    }
    
    override func outputMoney() {
        NSLog("没有钱退不了")
    }
    
    override func turnButton() {
        NSLog("请先放钱")
    }
    override func pushCandy() {
        NSLog("请先放钱")
    }
}
