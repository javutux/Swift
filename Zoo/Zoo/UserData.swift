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
    
    //I have created an optional variable called name of the type string with no assign value (assigned value is when = "Tom", etc.)
    var name: String?
    var score: Int?
    
    //I will creat a constructor function named init thta accepts two parameters called name and score that rae of types string and integer

    init(name: String?, score: Int?) {
        self.name = "Tom"
        self.score = 10
        
    }
}
