//
//  Contact.swift
//  TestApp1
//
//  Created by Basel Farag on 9/17/15.
//  Copyright (c) 2015 Basel Farag. All rights reserved.
//

import Foundation

class Contact {
    
    var firstName: String!
    var middleName: String?
    var lastName: String!
    
    var fullName:String {
        get {
            return firstName + " " + lastName
        }
    }
}