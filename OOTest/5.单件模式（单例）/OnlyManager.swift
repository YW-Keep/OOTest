//
//  OnlyManager.swift
//  OOTest
//
//  Created by tang on 2019/4/16.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 单件模式（单例）：
 确保一个类只有一个实例，并提供全局访问点。
 情景：
 一个机器产生牛奶棒
 管理线程等等
 
 */
class OnlyManager: NSObject {
    static let share = OnlyManager()
    private override init() { }
}
