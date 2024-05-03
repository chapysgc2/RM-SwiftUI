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
    let listCharacterInteractor = ListCharacterInteractor()

    var body: some Scene {
        WindowGroup {
            // Crea el presenter y pasa el interactor
            let presenter = ListCharacterPresenter(listCharacterInteractor: listCharacterInteractor)
            ListCharacterView(presenter: presenter)
        }
    }
}

