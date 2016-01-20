//
//  Recipe+CoreDataProperties.swift
//  Recepies
//
//  Created by Lalit on 2016-01-20.
//  Copyright © 2016 Bagga. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Recipe {

    @NSManaged var images: NSData?
    @NSManaged var ingredients: String?
    @NSManaged var steps: String?
    @NSManaged var title: String?

}
