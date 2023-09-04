//
//  CharacterModel.swift
//  RickAndMorty-Characters
//
//  Created by Alejandro Rodríguez Cañete on 29/8/23.
//

import Foundation

struct CharacterModel: Decodable {
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
}
