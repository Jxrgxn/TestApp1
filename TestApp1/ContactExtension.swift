//
//  ContactExtension.swift
//  TestApp1
//
//  Created by Basel Farag on 9/17/15.
//  Copyright (c) 2015 Basel Farag. All rights reserved.
//

import Foundation

// An extension allows you to add funcitonality to a class, without necessarily modifying the class itself.
extension Contact {
    
    func isCEO() -> Bool {
        if firstName == "Lisa" {
            return true
        } else {
            return false
        }
    }
}