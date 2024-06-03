//
//  APIClient.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import Foundation

final class ListOfCharactersAPIClient {
    
    func getListOfCharacters() async -> CharacterModelResponse {
        // url donde vamos hacer la peticion
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }
}
