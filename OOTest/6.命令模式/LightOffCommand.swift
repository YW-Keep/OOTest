//
//  LightOffCommand.swift
//  OOTest
//
//  Created by tang on 2019/4/17.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class LightOffCommand: Command {
    let light: Light
    init(_ light: Light) {
        self.light = light
    }
    override func execute() {
        self.light.lightOff()
    }
}
