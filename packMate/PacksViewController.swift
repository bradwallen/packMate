//
//  FirstViewController.swift
//  packMate
//
//  Created by Brad Allen on 4/22/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class PacksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return packMgr.packs.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = packMgr.packs[indexPath.row].name
        cell.detailTextLabel?.text = packMgr.packs[indexPath.row].weight
        
        return cell
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



//(name: "Day Pack", weight: 5)



//Packs(name: "Day Pack"),
//Packs(name: "Weekend Pack"),
//Packs(name: "5 Day Pack"),
//Packs(name: "Cold Weather")]