//
//  MainCoordinators.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listOfCharactersViewController = storyboard.instantiateViewController(withIdentifier: "CharactersListViewController")
        
        navigationController?.pushViewController(listOfCharactersViewController, animated: true)
    }
}
