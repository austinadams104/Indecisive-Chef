//
//  RandomizerViewController.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/2/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit

class RandomizerViewController: UIViewController {

    @IBOutlet weak var quickBtn: UIButton!
    @IBOutlet weak var aveBtn: UIButton!
    @IBOutlet weak var longBtn: UIButton!

    @IBOutlet weak var recipeNameLabel: UILabel!

    var recipes = [Recipes]()
    
    override func viewDidLoad() {
        recipes = Recipes.fetchAllRecipes(in: Store.sharedMainContext())
        for r in recipes {
            print (r)
        }
        
        
    }

    
    @IBAction func selectedButton(_ sender: UIButton) {
        if sender == quickBtn {
            sender.backgroundColor = UIColor.lightGray
            aveBtn.backgroundColor = UIColor.white
            longBtn.backgroundColor = UIColor.white
        }
        else if sender == aveBtn {
            sender.backgroundColor = UIColor.lightGray
            quickBtn.backgroundColor = UIColor.white
            longBtn.backgroundColor = UIColor.white
        }
        else if sender == longBtn {
            sender.backgroundColor = UIColor.lightGray
            aveBtn.backgroundColor = UIColor.white
            quickBtn.backgroundColor = UIColor.white
        }
        else {
            quickBtn.backgroundColor = UIColor.white
            aveBtn.backgroundColor = UIColor.white
            longBtn.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func pickMeal(_ sender: Any) {
        recipeNameLabel.text = recipes[Int(arc4random()) % recipes.count].name
        
    }
}





















