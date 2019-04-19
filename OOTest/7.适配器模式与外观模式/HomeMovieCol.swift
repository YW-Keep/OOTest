//
//  HomeMovieCol.swift
//  OOTest
//
//  Created by tang on 2019/4/19.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 外观模式：
 提供了一个统一的接口，用来访问子系统中一群接口。外观定义了一个高层接口，让子系统更容易使用。
 情景：
 家庭影院
 */

class HomeMovieCol: NSObject {
    let light:Light
    let tv: HomeTV
    let milk: MilkAdd
    init(light: Light,tv: HomeTV, milk: MilkAdd) {
        self.light = light
        self.tv = tv
        self.milk = milk
    }
    func homeTVon() {
        self.light.lightOn()
        self.tv.on()
        self.milk.on()
    }
    func homeTVoff() {
        self.light.lightOff()
        self.tv.off()
        self.milk.off()
    }
}
