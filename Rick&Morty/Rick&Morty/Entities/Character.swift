//
//  Character.swift
//  Rick&Morty
//
//  Created by Dani on 2/11/22.
//

import Foundation

struct CharacterList: Codable {
    let results: [Result]
}

struct Result: Codable {
    let id: Int
    let name: String
    let image: String
}
