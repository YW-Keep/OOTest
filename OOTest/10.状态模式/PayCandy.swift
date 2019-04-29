//
//  PayCandy.swift
//  OOTest
//
//  Created by tang on 2019/4/26.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class PayCandy: State {
    override func inputMoney() {
        NSLog("已经有钱了 不用再付了")
    }
    
    override func outputMoney() {
        NSLog("无法退款")
        self.machine!.state = self.machine!.noMoney
    }
    
    override func turnButton() {
        NSLog("只能出一次糖果")
    }
    override func pushCandy() {
        NSLog("拿好糖果")
        self.machine!.reduceCandy()
        if self.machine!.count > 0 {
            self.machine!.state = self.machine!.noMoney
        } else {
            self.machine!.state = self.machine!.noCandy
        }
    }
}
