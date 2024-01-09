//
//  AndromedaLaundryAppApp.swift
//  AndromedaLaundryApp
//
//  Created by Silvia Casanova Martinez on 7/1/24.
//

import SwiftUI

@main
struct AndromedaLaundryAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
