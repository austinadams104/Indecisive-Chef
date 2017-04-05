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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
