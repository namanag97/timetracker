//
//  timetrackerApp.swift
//  timetracker
//
//  Created by Naman Agarwal on 05/10/24.
//

import SwiftUI

@main
struct timetrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
