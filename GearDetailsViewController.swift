//
//  GearDetailsViewController.swift
//  packMate
//
//  Created by Brad Allen on 5/6/15.
//  Copyright (c) 2015 Studio M-Five. All rights reserved.
//

import UIKit

class GearDetailsViewController: UIViewController, UITextFieldDelegate {

    //reference the text fields
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDesc: UITextField!
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
        gearMgr.addGearItem(txtName.text, desc: txtDesc.text, weight: txtWeight.text);

        //when Add Gear button is touched, end editing
        self.view.endEditing(true)

        //clear out the text fields once the button is pressed
        txtName.text = ""
        txtDesc.text = ""
        txtWeight.text = ""
    }


    //iOS Touch Functions
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }


}
