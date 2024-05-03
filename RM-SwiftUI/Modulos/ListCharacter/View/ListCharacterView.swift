//
//  ListCharacterView.swift
//  RM-SwiftUI
//
//  Created by Hazel Alain on 03/05/24.
//

import Foundation
import SwiftUI

struct ListCharacterView: View {
    @ObservedObject var presenter: ListCharacterPresenter // Asegúrate de que el presenter sea observable

    var body: some View {
        VStack {
            Text("Rick and Morty Characters")
                .font(.title)
                .padding()

            List(presenter.characters, id: \.id) { character in
                HStack {
                    // Cargar la imagen desde la URL
                    AsyncImage(url: URL(string: character.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50) // Ajusta el tamaño de la imagen según sea necesario
                            .clipShape(Circle()) // Opcional: recorta la imagen en forma de círculo
                    } placeholder: {
                        // Placeholder mientras se carga la imagen
                        Color.gray
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }

                    VStack(alignment: .leading) {
                        Text(character.name)
                            .font(.headline)
                        Text("Status: \(character.status)")
                            .font(.subheadline)
                        Text("Species: \(character.species)")
                            .font(.subheadline)
                    }
                    .padding(.leading, 10)
                }
                .padding()
            }
            .onAppear {
                // Llama al método onViewAppear del presenter cuando la vista aparece
                presenter.onViewAppear()
            }
        }
    }
}


