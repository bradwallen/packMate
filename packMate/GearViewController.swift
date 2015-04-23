//
//  SecondViewController.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class GearViewController: UIViewController, UITableViewDataSource {
    
    var userGear = [
        Gear(name: "knife"),
        Gear(name: "sleeping bag"),
        Gear(name: "canteen"),
        Gear(name: "flint"),
        Gear(name: "tent"),
        Gear(name: "headlamp"),
        Gear(name: "small dry bag"),
        Gear(name: "medium dry bag"),
        Gear(name: "tent stakes"),
        Gear(name: "AAA batteries"),
        Gear(name: "socks"),
        Gear(name: "water filter") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userGear.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let gear : Gear = userGear[indexPath.row]
        
        cell.textLabel?.text = gear.name
        
        return cell
    }
    
}