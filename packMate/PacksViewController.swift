//
//  FirstViewController.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class PacksViewController: UIViewController, UITableViewDataSource {
    
    var packs = [Packs]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     var newPacks = Packs(name: "Day Pack", weight: 5)
        packs.append(newPacks)
        
    }
   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return packs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        var newPacks = packs[indexPath.row]
        cell.textLabel?.text = newPacks.name
        cell.detailTextLabel?.text = "pack weight"
        
        return cell
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}




//Packs(name: "Day Pack"),
//Packs(name: "Weekend Pack"),
//Packs(name: "5 Day Pack"),
//Packs(name: "Cold Weather")]