//
//  Recipes+CoreDataClass.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/14/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import Foundation
import CoreData

@objc(Recipes)
public class Recipes: NSManagedObject {
    
    class func save(newRecipe: Recipe, context: NSManagedObjectContext) {
        
        guard let recipe = NSEntityDescription.insertNewObject(forEntityName: "Recipes", into: context) as? Recipes else {return}
        
        recipe.name = newRecipe.name
        recipe.directions = newRecipe.instructions
        recipe.ingredients  = newRecipe.ingredients
        recipe.time = Int32(newRecipe.time)
        
        context.persist()
    }
    
    
    class func fetchAllRecipes(in context: NSManagedObjectContext) -> [Recipes] {
        let fetch = NSFetchRequest<Recipes>(entityName:"Recipes")
        
        do {
            return try context.fetch(fetch)
        } catch {
            return []
        }
    }
}
