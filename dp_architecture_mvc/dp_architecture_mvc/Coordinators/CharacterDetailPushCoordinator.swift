//
//  CharacterDetilPushCoordinator.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit

class CharacterDetailPushCoordinator: Coordinator {
    
    let characterModel: CharacterModel
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?, characterModel: CharacterModel) {
        self.navigationController = navigationController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
        
        navigationController?.pushViewController(characterDetailViewController,
                                                 animated: true)
    }
}
