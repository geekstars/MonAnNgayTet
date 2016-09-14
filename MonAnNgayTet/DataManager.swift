//
//  DataManager.swift
//  MonAnNgayTet
//
//  Created by Hoàng Minh Thành on 9/11/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import Foundation
class DataManager {
    var data = NSMutableArray()
    class var sharedInstance: DataManager {
        struct Static {
            static var onceToken:dispatch_once_t = 0
            static var instance: DataManager? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = DataManager()
            let filePath = NSBundle.mainBundle().pathForResource("CacMonAn", ofType: "plist")
            let raw = NSDictionary(contentsOfFile: filePath!)
            let temp = NSMutableArray(capacity: raw!.count)
            for item in raw! {
                let monAn = MonAn(name: item.value.valueForKey("name") as! String,photo: item.value.valueForKey("photo") as! String,info:item.value.valueForKey("info") as! String)
                temp.addObject(monAn)
            }
            Static.instance?.data = NSMutableArray(array: temp)
        }
        return Static.instance!
    }
}
