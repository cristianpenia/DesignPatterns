//
//  CharacterDetailView.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 03/06/24.
//

import UIKit
import SnapKit
import Kingfisher

class CharacterDetailView: UIView {
    
    
    // MARK: Views
    
    let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterSpecie: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    // MARK: Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    // MARK: Funcs
    
    private func setupView() {
        
        backgroundColor = .white
        
        addSubview(characterImageView)
        addSubview(characterName)
        addSubview(characterStatus)
        addSubview(characterSpecie)
        
        characterImageView.snp.makeConstraints { make in
            make.size.equalTo(200)
            make.centerY.equalToSuperview().inset(12)
            make.leading.equalToSuperview().inset(12)
        }
        
        characterName.snp.makeConstraints { make in
            make.leading.equalTo(characterImageView.snp.trailing).offset(20)
            make.top.equalTo(characterImageView.snp.top)
        }
        
        characterStatus.snp.makeConstraints { make in
            make.leading.equalTo(characterName.snp.leading)
            make.top.equalTo(characterName.snp.bottom).offset(8)
        }
        
        characterSpecie.snp.makeConstraints { make in
            make.leading.equalTo(characterName.snp.leading)
            make.top.equalTo(characterStatus.snp.bottom).offset(8)
        }
    }
    
    func configure(_ model: CharacterModel) {
        self.characterName.text = model.name
        self.characterSpecie.text = model.species
        self.characterStatus.text = model.status
        
        self.characterImageView.kf.setImage(with: URL(string: "\(model.image)"))
    }
}
