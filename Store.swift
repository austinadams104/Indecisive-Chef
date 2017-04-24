//
//  Store.swift
//  Indecisive Chef
//
//  Created by Austin Adams on 4/14/17.
//  Copyright © 2017 Austin Adams. All rights reserved.
//

import UIKit
import CoreData

class Store {
    
    class func sharedMainContext() -> NSManagedObjectContext {
        assert(Thread.isMainThread, "Wow, don't use this thread!")
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }
    
}

extension NSManagedObjectContext {
    func persist() {
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
}
