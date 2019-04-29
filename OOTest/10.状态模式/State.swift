//
//  State.swift
//  OOTest
//
//  Created by tang on 2019/4/26.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class State: NSObject {
    weak var machine: CandyMachine?
    init(_ machine: CandyMachine) {
        self.machine = machine
    }
     func inputMoney() {
        NSLog("inputMoney")
    }
    
    func outputMoney() {
        NSLog("outputMoney")
    }
    
    func turnButton() {
        NSLog("turnButton")
    }
    func pushCandy() {
        NSLog("pushCandy")
    }
}
