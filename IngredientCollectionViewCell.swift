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
    @IBOutlet weak var measurement: UILabel!
   
    @IBAction func changeIngredientAmount(_ sender: Any) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        quantity.layer.cornerRadius = 5
        quantity.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        quantity.layer.borderWidth = 0.5
        quantity.clipsToBounds = true
    }
}

