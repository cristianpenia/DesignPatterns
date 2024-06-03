//
//  CharactersViewController.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import UIKit

class CharactersViewController: UIViewController {
    
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = ListOfCharactersAPIClient()
    private var tableViewDataSource: ListOfCharacterTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    override func loadView() {
        view = CharacterListView()
        
        tableViewDataSource = ListOfCharacterTableViewDataSource(tableVew: mainView.charactersTableView)
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // obtener el index y lo usamos en el modelo, inicializamos el viewcontroller, y presentamos
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("Index \(index)")
            
            guard let dataSource = self?.tableViewDataSource else {
                return
            }
            
            let characterModel = dataSource.characters[index]
            let characterDetailViewController = CharacterDetailViewController(characterDetailModel: characterModel)
            self?.present(characterDetailViewController, animated: true)
        }
        
        Task {
            let characters = await apiClient.getListOfCharacters()
            tableViewDataSource?.set(characters: characters.results)
        }
    }
}


/*
 Podemos ver una arquitectura como una casa la cual tiene multiples habitaciones y estas a su vez tienen una funcionalidad faticular
 para estar ordenados
 
 Cuando se tiene una arquitectura es mas facil:
 - Dificir responsabilidades
 - Seguir el codigo
 - Iterar
 - dependiendo de la arquitectura puede ser mas mantenible, escalable y testeable
 - evitar crear clases enormes

 
 MVC
 - son los datos que se van utilizar para representar la informacion
 - 
 */
