//
//  timetrackerApp.swift
//  timetracker
//
//  Created by Naman Agarwal on 05/10/24.
//

import SwiftUI
import Firebase // Add this import statement

@main
struct timetrackerApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        FirebaseApp.configure() // Initialize Firebase here
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
