//
//  Theme.swift
//  OOTest
//
//  Created by tang on 2019/4/11.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit
/*
 设计原则：
 为了交互对象之间的松耦合设计而努力
 观察者模式：
 在对象之间定义一对多的依赖，这样一来，当一个对象改变状态，依赖它的对象都会受到通知，并自动更新。
 情景：
 气象站要发布气象信息，有多个看板需要接受信息，看板可能会增加或者减少
 这里代码中的主题就可以看成气象站，而观察者就可以看成一个个的看板
 */
protocol UpDataProtocol: NSObject {
    func updata(data: String)
}

class Theme: NSObject {
    var myObservers: Array<UpDataProtocol> = [];
    var data: String = "";
    
    func addMyObserver<T: UpDataProtocol>(observer: T) {
        myObservers.append(observer);
    }
    
    func removeMyObserver<T: UpDataProtocol>(observer: T) {
        for (index,inObserver) in myObservers.enumerated() {
            if(inObserver == observer) {
                myObservers.remove(at: index)
            }
        }
    }
    // 数据可以直接推过去
    // 当数据量多  更新的 数据少的时候也可以通过拉的方式让观察者自己啦
    func notifyObservers() {
        for observer in myObservers {
            observer.updata(data: self.data)
        }
    }
    
    func changeData(newData: String) {
        self.data = newData;
        self.notifyObservers();
    }
    
    func getData() -> String {
        return self.data
    }
}
