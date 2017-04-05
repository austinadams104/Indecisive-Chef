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
        Recipe(name: "Lasagna", ingredients: [" pasta", "cheese", "sauce"], instructions: "Cook it", time: 55),
        Recipe(name: "Pizza", ingredients: ["Crust", "cheese", "sauce", "pepperoni"], instructions: "Cook it", time: 20),
        Recipe(name: "Frozen Burrito", ingredients: ["Frozen Burrito"], instructions: "Cook it",time: 5),
        Recipe(name: "JDogs", ingredients: ["Polish Dog", "Bun", "Jdog sauce"], instructions: "Cook it",time: 15),
        Recipe(name: "Shrimp Scampi", ingredients: ["Raw Shrimp", "Butter", "garlic"], instructions: "Cook it",time: 20),
        Recipe(name: "Tacos", ingredients: ["Tortilla","ground beef", "cheese", "lettuce"], instructions: "Cook it",time: 20),
        Recipe(name: "BBQ Chicken", ingredients: ["chicken", "BBQ sauce"], instructions: "Cook it",time: 30),
        Recipe(name: "Pulled Pork", ingredients: ["Pork", "BBQ sauce", ], instructions: "Cook it",time: 120),
        Recipe(name: "Steak", ingredients: ["Steak", "A1 sauce"], instructions: "Cook it",time: 35),
        ]
    
    var name:String
    var instructions: String
    var time: Int
    var ingredients: [String]
    
    
    init(name: String, ingredients: [String], instructions: String, time: Int) {
        self.name = name
        self.time = time
        self.ingredients = ingredients
        self.instructions = instructions
    }
    
}
