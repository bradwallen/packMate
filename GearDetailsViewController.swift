//
//  GearDetailsViewController.swift
//  packMate
//
//  Created by Brad Allen on 5/6/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class GearDetailsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddNewGear(sender: UIButton) {
        gearMgr.addGearItem(txtName.text, weight: txtWeight.text);
        self.view.endEditing(true)
        txtName.text = ""
        txtWeight.text = ""
    }
    
    
    //iOS Touch Functions
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    

    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
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
