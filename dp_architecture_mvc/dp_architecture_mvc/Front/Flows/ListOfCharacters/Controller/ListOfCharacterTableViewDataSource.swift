//
//  ListOfCharacterTableViewDataSource.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import Foundation
import UIKit

final class ListOfCharacterTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let tableVew: UITableView
    
    private(set) var characters: [CharacterModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableVew.reloadData()
            }
        }
    }
    
    init(tableVew: UITableView) {
        self.tableVew = tableVew
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterListCellView", for: indexPath) as! CharacterListCellView
        let character = characters[indexPath.row]
        
        cell.configure(character)
        
        return cell
    }
    
    func set(characters: [CharacterModel]) {
        self.characters = characters
    }
}
