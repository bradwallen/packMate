//
//  PackManager.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import Foundation

var packMgr:PackManager = PackManager()

struct pack {
    var name:String?
    var weight:String?
}

class PackManager: NSObject{
    
    var packs = [pack]()
    
    func addPack(name: String, weight: String){
        packs.append(pack(name: name, weight: weight))
    }
    
}