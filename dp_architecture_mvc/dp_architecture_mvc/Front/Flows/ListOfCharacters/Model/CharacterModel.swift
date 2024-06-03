//
//  CharacterModel.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import Foundation

struct CharacterModel: Decodable {
    let name: String
    let status: String
    let species: String
    let image: String
}
