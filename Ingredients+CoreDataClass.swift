//
//  Ingredients+CoreDataClass.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/15/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import Foundation
import CoreData

@objc(Ingredients)
///This is my core data Ingredient Class
public class Ingredients: NSManagedObject {

    class func saveIngredient(newIngredient: Ingredient, context: NSManagedObjectContext) {
        
        guard let ingredient = NSEntityDescription.insertNewObject(forEntityName: "Ingredients", into: context) as? Ingredients else {return}
        
        ingredient.amount = newIngredient.amount
        ingredient.measurement = newIngredient.measurement
        ingredient.name  = newIngredient.name
        
        context.persist()
    }
    
    
    class func fetchAllIngredients(in context: NSManagedObjectContext) -> [Ingredients] {
        let fetch = NSFetchRequest<Ingredients>(entityName:"Ingredients")
        
        do {
            return try context.fetch(fetch)
        } catch {
            return []
        }
    }
}
