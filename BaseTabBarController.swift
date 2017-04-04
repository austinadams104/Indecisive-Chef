//
//  File.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/3/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    @IBInspectable var defaultIndex: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = defaultIndex
    }
    
}
