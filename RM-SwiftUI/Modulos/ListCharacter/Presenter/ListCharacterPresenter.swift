//
//  ListCharacterPresenter.swift
//  RM-SwiftUI
//
//  Created by Hazel Alain on 03/05/24.
//

import Foundation
import SwiftUI

class ListCharacterPresenter: ObservableObject {
    @Published var characters: [ListCharacterEntity] = []
    private var listCharacterInteractor: ListCharacterInteractor

    init(listCharacterInteractor: ListCharacterInteractor) {
        self.listCharacterInteractor = listCharacterInteractor
    }

    func onViewAppear() {
        listCharacterInteractor.fetchCharacters { [weak self] characters, error in
            if let error = error {
                print("Error fetching characters: \(error)")
            } else if let characters = characters {
                // Actualiza las propiedades @Published en el hilo principal
                DispatchQueue.main.async {
                    self?.characters = characters
                }
            }
        }
    }
}

