//
//  NoCandy.swift
//  OOTest
//
//  Created by tang on 2019/4/26.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class NoCandy: State {
    override func inputMoney() {
        NSLog("糖果已售完")
    }
    
    override func outputMoney() {
        NSLog("糖果已售完")
    }
    
    override func turnButton() {
        NSLog("糖果已售完")
    }
    override func pushCandy() {
        NSLog("糖果已售完")
    }
}
