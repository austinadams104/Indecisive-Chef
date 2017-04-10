//
//  NewRecipeViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/4/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class NewRecipeViewController: UIViewController {
    
    @IBOutlet weak var recipeNameField: UITextField!
    @IBOutlet weak var recipeInstructionField: UITextView!
    @IBOutlet weak var recipeIngredientField: UITextView!
    @IBOutlet weak var cookTime: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        recipeInstructionField.layer.cornerRadius = 5
        recipeInstructionField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        recipeInstructionField.layer.borderWidth = 0.5
        recipeInstructionField.clipsToBounds = true
        
        recipeIngredientField.layer.cornerRadius = 5
        recipeIngredientField.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        recipeIngredientField.layer.borderWidth = 0.5
        recipeIngredientField.clipsToBounds = true
    }
}

//IDEA! delete ingredient field, add horizontal stack view with text fields and picker views to take ingredient data that will fill easier than one big textview.
//learn to set placeholder text inside instructions text view


//pickerView settings
//pint quart fl oz oz
//var pickerData = ["cup", "cups", "oz", "fl oz", "tsp","Tbsp","lb", "lbs", "pint", "pints", "quart", "quarts", "package", "packages", "can", "cans", "bottle", "bottles", ""]

//extension IngredientCollectionViewCell: UIPickerViewDelegate {
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return pickerData.count
//    }
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return pickerData[row]
//    }
//
//    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
//        return 25
//    }
//}
//
//extension IngredientCollectionViewCell: UIPickerViewDataSource {
//
//}
