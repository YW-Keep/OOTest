//
//  TwoObserver.swift
//  OOTest
//
//  Created by tang on 2019/4/11.
//  Copyright © 2019 tang. All rights reserved.
//

import UIKit

class TwoObserver: NSObject,UpDataProtocol {
    var theme: Theme? = nil;
    
    func updata(data: String) {
        let newData = theme!.getData();
        NSLog("two observer %@", newData)
    }
}
