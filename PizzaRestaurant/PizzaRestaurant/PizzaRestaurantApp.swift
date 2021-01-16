//
//  PizzaRestaurantApp.swift
//  PizzaRestaurant
//
//  Created by Bruno Brito on 16/01/21.
//

import SwiftUI

@main
struct PizzaRestaurantApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
                
        }
    }
}
