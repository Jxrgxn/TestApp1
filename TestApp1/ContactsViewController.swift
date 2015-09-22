//
//  ContactsViewController.swift
//  TestApp1
//
//  Created by Basel Farag on 9/17/15.
//  Copyright (c) 2015 Basel Farag. All rights reserved.
//

import UIKit

class ContactsViewController: UITableViewController {

    private var contacts = [Contact]() // Define AND initialize an empty array of Contacts.
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Tell the Add Contact view controller who it's delegate is (in this case, it's SELF)
        let viewController = segue.destinationViewController as! AddContactViewController
        viewController.delegate = self
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("testIdentifier", forIndexPath: indexPath) as! UITableViewCell
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.fullName
        
        if contact.isCEO() {
            cell.detailTextLabel?.text = "CEO"
        } else {
            cell.detailTextLabel?.text = "Employee"
        }

        return cell
    }
}

extension ContactsViewController: AddContactDelegate {

    func didSaveNewContact(firstName: String, lastName: String) {
        // 1. Create new contact with first and last name, and add it to the contacts array
        
        let newContact = Contact()
        newContact.firstName = firstName
        newContact.lastName = lastName
        contacts.append(newContact)
        
        // 2. Reload the tableview.
        tableView.reloadData()
        
        // 3. Navigate back to the Contacts view controller.
        navigationController?.popViewControllerAnimated(true)
    }
}
