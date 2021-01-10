//
//  Order+CoreDataProperties.swift
//  PizzaRestaurant
//
//  Created by Bruno Brito on 10/01/21.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var status: String?
    @NSManaged public var id: UUID?
    @NSManaged public var numberOfSlices: Int16
    @NSManaged public var pizzaType: String?
    @NSManaged public var tableNumber: String?

}

extension Order : Identifiable {

}
