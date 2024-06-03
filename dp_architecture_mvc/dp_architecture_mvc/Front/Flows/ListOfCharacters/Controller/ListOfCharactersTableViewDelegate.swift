//
//  ListOfCharactersTableViewDelegate.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit

class ListOfCharactersTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didTapOnCell?(indexPath.row)
    }
    
}
