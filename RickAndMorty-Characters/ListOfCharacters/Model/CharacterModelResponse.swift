//
//  CharacterModelResponse.swift
//  RickAndMorty-Characters
//
//  Created by Alejandro Rodríguez Cañete on 29/8/23.
//

import Foundation

struct CharacterModelResponse: Decodable {
    let results: [CharacterModel]
}
