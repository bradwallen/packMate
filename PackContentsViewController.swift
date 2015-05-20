//
//  PackContentsViewController.swift
//  packMate
//
//  Created by Brad Allen on 5/6/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class PackContentsViewController: UIViewController {
   
    //reference the text fields
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnCreateNewPack(sender: AnyObject) {
        packMgr.addPack(txtName, weight: txtDesc)
        
        //when Add Gear button is touched, end editing
        self.view.endEditing(true)
        
        //clear out the text fields once the button is pressed
        txtName.text = ""
        txtDesc.text = ""
    }
    
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
