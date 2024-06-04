//
//  CharacterDetailModelCoordinator.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit

class CharacterDetailModalCoordinator: Coordinator {
    
    let characterModel: CharacterModel
    var viewController: UIViewController?
    
    init(viewController: UIViewController?, characterModel: CharacterModel) {
        self.viewController = viewController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
        
        viewController?.present(characterDetailViewController, animated: true)
    }
}
