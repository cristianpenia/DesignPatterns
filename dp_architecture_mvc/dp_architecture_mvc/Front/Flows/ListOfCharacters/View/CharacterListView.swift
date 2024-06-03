//
//  CharacterListView.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit
import SnapKit

class CharacterListView: UIView {
    
    let charactersTableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.register(CharacterListCellView.self, forCellReuseIdentifier: "CharacterListCellView")
        return tableview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(charactersTableView)
        
        charactersTableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
