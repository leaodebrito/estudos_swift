//
//  OnBoardPageApp.swift
//  OnBoardPage
//
//  Created by Bruno Brito on 20/02/21.
//

import SwiftUI

@main
struct OnBoardPageApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
