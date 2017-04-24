//
//  Recipe.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/3/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//
import UIKit

class Recipe {
    
//    static var ingredients = [
//        Recipe(name: "Lasagna", ingredients: [(amount: 1, measurement: "lb", name: "Pasta"), (amount: 1, measurement: "cup", name: "cheese"), (amount: 1, measurement: "can", name: "spaghetti sauce")], instructions: "Cook it", time: 55),
//        Recipe(name: "Pizza", ingredients: [(amount: 1, measurement: "lb", name: "Pizza Crust"), (amount: 1, measurement: "lb", name: "Mozzarella Cheese"), (amount: 2, measurement: "cup", name: "Pizza Sauce"), (amount: 1, measurement: "package", name: "pepparoni")], instructions: "Add ingredients, and put in oven for 20 minutes.", time: 20),
//        Recipe(name: "Frozen Burrito", ingredients: [(amount: 4, measurement: "", name: "Frozen Burrito")], instructions: "Put in microwave",time: 5),
//        Recipe(name: "JDogs", ingredients: [(amount: 1, measurement: "lb", name: "Polish Dog"), (amount: 1, measurement: "package", name: "Buns"), (amount: 1, measurement: "lb", name: "JDog Sauce")], instructions: "Cut x's into dog, grill it",time: 15),
//        Recipe(name: "Shrimp Scampi", ingredients: [(amount: 1, measurement: "lb", name: "Raw Shrimp"), (amount: 2, measurement: "cup", name: "butter"), (amount: 6, measurement: "", name: "garlic cloves")], instructions: "Cook it",time: 20),
//        Recipe(name: "Tacos", ingredients: [(amount: 16, measurement: "", name: "Tortilla"),(amount: 1, measurement: "lb", name: "Ground Beef"), (amount: 2, measurement: "cup", name: "cheese"), (amount: 2, measurement: "cup", name: "lettuce")], instructions: "Cook it like a mexican would",time: 20),
//        Recipe(name: "BBQ Chicken", ingredients: [(amount: 1, measurement: "lb", name: "chicken"), (amount: 4, measurement: "Tbsp", name: "bbq sauce")], instructions: "Cook it with bbq",time: 30),
//        Recipe(name: "Pulled Pork", ingredients: [(amount: 1, measurement: "lb", name: "Pork shoulder"), (amount: 3, measurement: "Tbsp", name: "BBQ sauce"), ], instructions: "Cook it long time",time: 120),
//        Recipe(name: "Steak", ingredients: [(amount: 5, measurement: "lb", name: "Steak"), (amount: 10, measurement: "Tbsp", name: "A1 Sauce")], instructions: "Cook it",time: 35),
//        ]
    
    var name:String
    var instructions: String
    var time: Int
    var ingredients: [Ingredients]
    
    
    init(name: String, ingredients: [Ingredients], instructions: String, time: Int) {
        self.name = name
        self.time = time
        self.ingredients = ingredients
        self.instructions = instructions
    }
    
}
