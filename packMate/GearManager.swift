//
//  GearManager.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import Foundation

var gearMgr:GearManager = GearManager()

struct gear {
    var name:String?
    var desc:String?
    var weight:String?
}

class GearManager: NSObject{
    
    var gearItem = [gear]()
    
    func addGearItem(name: String, desc: String, weight: String){
        gearItem.append(gear(name: name, desc: desc, weight: weight))
    }

}

