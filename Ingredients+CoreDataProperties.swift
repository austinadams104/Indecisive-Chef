//
//  Ingredients+CoreDataProperties.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/15/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import Foundation
import CoreData


extension Ingredients {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ingredients> {
        return NSFetchRequest<Ingredients>(entityName: "Ingredients")
    }

    @NSManaged public var amount: String?
    @NSManaged public var measurement: String?
    @NSManaged public var name: String?

}
