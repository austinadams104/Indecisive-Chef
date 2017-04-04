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

    var recipes = ["Lasagna", "Pizza", "Frozen Burritos", "JDogs", "Tacos", "BBQ Chicken", "Pulled Pork", "Steak"]
    
    override func viewDidLoad() {
        
        
        
    }
//        var button:UIButton  = UIButton.buttonWithType(UIButtonType.System) as UIButton
//        
//        button.setTitle("Your title", forState: UIControlState.Normal)
//        button.frame = CGRectMake(0, 0, 100, 44)
//        
//        self.view.addSubview(button as UIView)
//        //set normal image
//        button.setImage(normalImage, forState: UIControlState.Normal)
//        //set highlighted image
//        button.setImage(selectedImage, forState: UIControlState.Selected)
//        
//        button.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//    }
//    
//    func buttonClicked(sender:UIButton)
//    {
//        sender.selected = !sender.selected;
//    }
    
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
        recipeNameLabel.text = recipes[Int(arc4random()) % recipes.count]
        
    }
}





















