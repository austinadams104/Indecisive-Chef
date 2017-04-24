//
//  File.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/15/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class Ingredient {
    
    var amount: String
    var measurement: String
    var name: String
    
    
    init(amount: String, measurement: String, name: String) {
        self.amount = amount
        self.measurement = measurement
        self.name = name
    }
    
}
