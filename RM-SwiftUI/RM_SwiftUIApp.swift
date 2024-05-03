//
//  RM_SwiftUIApp.swift
//  RM-SwiftUI
//
//  Created by Hazel Alain on 03/05/24.
//

import SwiftUI

@main
struct RM_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
