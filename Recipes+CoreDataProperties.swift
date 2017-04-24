//
//  Recipes+CoreDataProperties.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/14/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import Foundation
import CoreData


extension Recipes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipes> {
        return NSFetchRequest<Recipes>(entityName: "Recipes")
    }

    @NSManaged public var name: String?
    @NSManaged public var ingredients: [Ingredients]
    @NSManaged public var directions: String?
    @NSManaged public var recipeImage: NSObject?
    @NSManaged public var time: Int32

}
