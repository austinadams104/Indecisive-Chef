//
//  IngredientCollectionViewCell.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/2/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class IngredientCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ingredientName: UILabel!
    @IBOutlet weak var quantity: UITextField!
    
    @IBAction func changeIngredientAmount(_ sender: Any) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
