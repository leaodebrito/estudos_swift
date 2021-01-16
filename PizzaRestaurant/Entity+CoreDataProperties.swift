//
//  Entity+CoreDataProperties.swift
//  PizzaRestaurant
//
//  Created by Bruno Brito on 16/01/21.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var tableNumber: String
    @NSManaged public var pizzaType: String
    @NSManaged public var numberOfSlices: Int16
    @NSManaged public var id: UUID
    @NSManaged public var status: String

}

extension Entity : Identifiable {

}
