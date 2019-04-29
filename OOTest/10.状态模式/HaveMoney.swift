//
//  HaveMoney.swift
//  OOTest
//
//  Created by tang on 2019/4/26.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class HaveMoney: State {
    override func inputMoney() {
        NSLog("已经有钱了 不用再付了")
    }
    
    override func outputMoney() {
        NSLog("给你退款")
         self.machine!.state = self.machine!.noMoney
    }
    
    override func turnButton() {
        NSLog("OK。为你出糖果")
        self.machine!.state = self.machine!.payCandy
        self.machine!.pushCandy()
    }
    override func pushCandy() {
        NSLog("稍后")
    }
}
