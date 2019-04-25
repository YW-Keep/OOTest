//
//  Component.swift
//  OOTest
//
//  Created by tang on 2019/4/25.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 组合模式：
 允许你将对象组合成树形结构来表现"整体/部分"层次结构。组合能让客户以一致的方式处理个别对象以及对象组合。
 组合模式以单一责任设计原则换取透明性。透明性就是通过让组件的接口同时包含一些管理子节点和叶节点的操作，客户就可以将组合和叶节点一视同仁。
 情景：
 一个菜单下面不单单有菜单item 还有子菜单。
 */
class Component: NSObject {

    func addMenu(_ menuItem: Component) {
        
    }
    
    func getItemName() -> String {
        return "";
    }
    func getItemPrice() -> String {
        return "";
    }
    func printInfo() {
        NSLog("");
    }
    
}
