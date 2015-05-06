//
//  SecondViewController.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class GearViewController: UIViewController, UITableViewDataSource {
    
    var gear = [Gear]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    var newGear = Gear(name: "knife", weight: 2)
        gear.append(newGear)
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gear.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        var newGear = gear[indexPath.row]
        cell.textLabel?.text = newGear.name
        cell.detailTextLabel?.text = "item weight"
        
        //Put the picture next to each gear item.
        var gearImage = UIImage(named: "PlaceHolderImage")
        cell.imageView?.image = gearImage
        
        return cell
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



//    var userGear = [
//        Gear(name: "knife"),
//        Gear(name: "sleeping bag"),
//        Gear(name: "canteen"),
//        Gear(name: "flint"),
//        Gear(name: "tent"),
//        Gear(name: "headlamp"),
//        Gear(name: "small dry bag"),
//        Gear(name: "medium dry bag"),
//        Gear(name: "tent stakes"),
//        Gear(name: "AAA batteries"),
//        Gear(name: "socks"),
//        Gear(name: "water filter") ]
















