//
//  CharacterListCellView.swift
//  RickAndMorty-Characters
//
//  Created by Alejandro Rodríguez Cañete on 29/8/23.
//

import Foundation
import UIKit
import Kingfisher

class CharacterListCellView: UITableViewCell {
    let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterGender: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterSpecie: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Name: UILabel = {
        let label = UILabel()
        label.text = "Name: "
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Status: UILabel = {
        let label = UILabel()
        label.text = "Status: "
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Gender: UILabel = {
        let label = UILabel()
        label.text = "Gender: "
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Specie: UILabel = {
        let label = UILabel()
        label.text = "Specie: "
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews() {
        addSubview(characterImageView)
        
        addSubview(characterName)
        addSubview(characterGender)
        addSubview(characterStatus)
        addSubview(characterSpecie)
        
        addSubview(Name)
        addSubview(Gender)
        addSubview(Status)
        addSubview(Specie)
        
        NSLayoutConstraint.activate([
            
            characterImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            characterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            characterImageView.heightAnchor.constraint(equalToConstant: 95),
            characterImageView.widthAnchor.constraint(equalToConstant: 95),
            
            Name.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 12),
            Name.topAnchor.constraint(equalTo: characterImageView.topAnchor),
            
            characterName.leadingAnchor.constraint(equalTo: Name.trailingAnchor),
            characterName.topAnchor.constraint(equalTo: characterImageView.topAnchor),
            
            Gender.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 12),
            Gender.topAnchor.constraint(equalTo: Name.bottomAnchor, constant: 5),
            
            characterGender.leadingAnchor.constraint(equalTo: Gender.trailingAnchor),
            characterGender.topAnchor.constraint(equalTo: Name.bottomAnchor, constant: 5),
            
            Specie.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 12),
            Specie.topAnchor.constraint(equalTo: Gender.bottomAnchor, constant: 5),
            
            characterSpecie.leadingAnchor.constraint(equalTo: Specie.trailingAnchor),
            characterSpecie.topAnchor.constraint(equalTo: Gender.bottomAnchor, constant: 5),
            
            Status.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 12),
            Status.topAnchor.constraint(equalTo: Specie.bottomAnchor, constant: 5),
            
            characterStatus.leadingAnchor.constraint(equalTo: Status.trailingAnchor),
            characterStatus.topAnchor.constraint(equalTo: Specie.bottomAnchor, constant: 5)
        ])
    }
    
    func configure(_ model: CharacterModel) {
        self.characterName.text = model.name
        self.characterSpecie.text = model.species
        self.characterGender.text = model.gender
        self.characterStatus.text = model.status
        self.characterImageView.kf.setImage(with: URL(string: model.image))
    }
}
