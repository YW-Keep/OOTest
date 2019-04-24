//
//  Iterator.swift
//  OOTest
//
//  Created by tang on 2019/4/24.
//  Copyright © 2019 tang. All rights reserved.
//

/*
 设计原则：
 一个类应该只有一个引起变化的原因（单一责任）
 */

/*
 迭代器模式：
 提供一种方法顺序访问一个聚合对象中的各个元素，而又不暴露其内部的表示
 这里只写了一个菜单实现方式，其实这里我们可以通过迭代器去解耦合这里的菜单集合方式，
 其实我们可以不关系菜单集合是怎么实现的是数组还是链表还是其他的
 */

import UIKit

class Iterator: NSObject {
    
    func haveNext() -> Bool{
        return true
    }
    
    func next() -> MenuItem {
        return MenuItem("xx","1")
    }
}
