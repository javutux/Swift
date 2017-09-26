//
//  UserData.swift
//  Zoo
//
//  Created by Ieva Pipinyte on 26/09/2017.
//  Copyright © 2017 Ieva Pipinyte. All rights reserved.
//

import Foundation
import UIKit

class UserData {
    
    //I have created an optional variable called name of the type string with no assign value (assigned value is when = "Tom", etc. )
    var name: String?
    var score: Int?
    
    //I will create a constructor function named init that accepts two parameters called name and score that rae of types string and integer
    
    init(username: String?, userscore: Int?) {
//
        self.name = username!
        self.score = userscore!
        
    }
}
