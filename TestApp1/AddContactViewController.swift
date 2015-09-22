//
//  AddContactViewController.swift
//  TestApp1
//
//  Created by Basel Farag on 9/17/15.
//  Copyright (c) 2015 Basel Farag. All rights reserved.
//

import UIKit


protocol AddContactDelegate {
    func didSaveNewContact(firstName: String, lastName: String)
}


class AddContactViewController: UITableViewController {
    
    var delegate: AddContactDelegate? // This HAS to be set by the parent view controller. If it's not set, it will be NIL, and the app will crash when trying to invoke it in save...

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveContactUponPressed(sender: AnyObject) {
        if delegate == nil {
            print("You haven't set a delegate!!")
        } else {
            delegate!.didSaveNewContact(firstNameTextField.text, lastName: lastNameTextField.text)
        }
    }
}
