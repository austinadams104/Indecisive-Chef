//
//  NewRecipeTableViewCell.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/21/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class NewRecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var ingredientNametxt: UITextField!
    @IBOutlet weak var wholeNumberPicker: UIPickerView!
    @IBOutlet weak var fractionNumberPicker: UIPickerView!
    @IBOutlet weak var measurementTypePicker: UIPickerView!
    @IBOutlet weak var addButton: UIButton!
    
    var ingredientData = [Ingredient]()
    var update: UpdateDataDelegate!
    var ingredient = [Ingredients]()
    var index = 0
    
    var wholeNumberPicked = ""
    var fractionPicked = ""
    var measurementPicked = ""
    
    let measurementTypes = ["cup", "cups", "oz", "fl oz", "tsp","Tbsp","lb", "lbs", "pint", "pints", "quart", "quarts", "package", "packages", "can", "cans", "bottle", "bottles", ""]
    
    let fractionTypes = ["", "1/8", "1/4", "1/3", "1/2", "2/3", "3/4"]
    
    let wholeNumbers = ["","1","2","3","4","5","6","7","8","9","10"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("Working on custom cell")
        wholeNumberPicker.delegate = self
        fractionNumberPicker.delegate = self
        measurementTypePicker.delegate = self
    }
//    
//    @IBAction func removeIngredient(_ sender: Any) {
//        update.deleteIngredient(atIndex: index)
//        addButton.isHidden = false
//        addButton.isEnabled = true
//        print(index)
//    }
    
    @IBAction func newIngredientButton(_ sender: Any) {
        //add row to table View to add a new ingredient
        update.updateIngredient(index: index, ingredient: ingredient)
//        update.updateIngredient(index: index, ingredient: [Ingredients(amount:(wholeNumberPicked + fractionPicked), measurement: measurementPicked, name:ingedientName!)])
        
    }
    
}

extension NewRecipeTableViewCell: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == wholeNumberPicker {
            return wholeNumbers.count
        }
        else if pickerView == measurementTypePicker {
            return measurementTypes.count
        }
        else if pickerView == fractionNumberPicker {
            return fractionTypes.count
        }
        else {
            return 0
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if pickerView == wholeNumberPicker {
                let row = wholeNumberPicker.selectedRow(inComponent: index)
                wholeNumberPicked = wholeNumbers[row]
            }
            else if pickerView == measurementTypePicker {
                let row = measurementTypePicker.selectedRow(inComponent: index)
                measurementPicked = measurementTypes[row]
            }
            else if pickerView == fractionNumberPicker {
                let row = fractionNumberPicker.selectedRow(inComponent: index)
                measurementPicked = fractionTypes[row]
                print(measurementPicked)
            }
            else {
                return
            }
        }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == wholeNumberPicker {
            return wholeNumbers[row]
        }
        else if pickerView == measurementTypePicker {
            return measurementTypes[row]
        }
        else if pickerView == fractionNumberPicker {
            return fractionTypes[row]
        }
        else {
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 45
    }
    
    
}
