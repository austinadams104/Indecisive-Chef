//
//  Recipe.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/3/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//
import UIKit

class Recipe {
    
    static var ingredients = [
        Recipe(name: "Lasagna", ingredients: [" pasta", "cheese", "sauce"], time: 55),
        Recipe(name: "Pizza", ingredients: ["Crust", "cheese", "sauce", "pepperoni"], time: 20),
        Recipe(name: "Frozen Burrito", ingredients: ["Frozen Burrito"], time: 5),
        Recipe(name: "JDogs", ingredients: ["Polish Dog", "Bun", "Jdog sauce"], time: 15),
        Recipe(name: "Shrimp Scampi", ingredients: ["Raw Shrimp", "Butter", "garlic"], time: 20),
        Recipe(name: "Tacos", ingredients: ["Tortilla","ground beef", "cheese", "lettuce"], time: 20),
        Recipe(name: "BBQ Chicken", ingredients: ["chicken", "BBQ sauce"], time: 30),
        Recipe(name: "Pulled Pork", ingredients: ["Pork", "BBQ sauce", ], time: 120),
        Recipe(name: "Steak", ingredients: ["Steak", "A1 sauce"], time: 35),
        ]
    
    var name:String
    var time: Int
    
    
    init(name: String, ingredients: [String], time: Int) {
        self.name = name
        self.time = time
    }
    
}
