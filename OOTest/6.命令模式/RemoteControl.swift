//
//  RemoteControl.swift
//  OOTest
//
//  Created by tang on 2019/4/17.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
// 远程控制器 即插线板  设置七个口子
class RemoteControl: NSObject {
    var onCommands: [Command] = []
    var offCommands: [Command] = []
    override init() {
        let noCommand = Command()
        for _ in 0...6 {
            onCommands.append(noCommand)
            offCommands.append(noCommand)
        }
        super.init()
    }
    
    func setCommands(_ slot: Int,_ onCommand: Command,_ offCommand: Command) {
        guard  -1 < slot && slot < 7 else {
            return
        }
        onCommands[slot] = onCommand
        offCommands[slot] = offCommand
    }
    
    func onButtonWasPush(_ slot: Int) {
        onCommands[slot].execute()
    }
    
    func offButtonWasPush(_ slot: Int) {
        offCommands[slot].execute()
    }

}
