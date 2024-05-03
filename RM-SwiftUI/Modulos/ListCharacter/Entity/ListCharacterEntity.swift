//
//  ListCharacterEntity.swift
//  RM-SwiftUI
//
//  Created by Hazel Alain on 03/05/24.
//

import Foundation

struct ListCharacterEntity : Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let image: String
}
