//
//  CharacterDetailView.swift
//  RickAndMorty-Characters
//
//  Created by Alejandro Rodríguez Cañete on 30/8/23.
//

import Foundation
import UIKit

class CharacterDetailView: UIView {
    let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterSpecie: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterGender: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Name: UILabel = {
        let label = UILabel()
        label.text = "Name: "
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Status: UILabel = {
        let label = UILabel()
        label.text = "Status: "
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Gender: UILabel = {
        let label = UILabel()
        label.text = "Gender: "
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let Specie: UILabel = {
        let label = UILabel()
        label.text = "Specie: "
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        
        backgroundColor = .white
        
        addSubview(characterImageView)
        addSubview(characterName)
        addSubview(characterStatus)
        addSubview(characterSpecie)
        addSubview(characterGender)
        
        addSubview(Name)
        addSubview(Status)
        addSubview(Specie)
        addSubview(Gender)
        
        
        NSLayoutConstraint.activate([
            characterImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            characterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            characterImageView.heightAnchor.constraint(equalToConstant: 350),
            characterImageView.widthAnchor.constraint(equalToConstant: 350),
            
            Name.topAnchor.constraint(equalTo: characterImageView.bottomAnchor, constant: 25),
            Name.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            characterName.topAnchor.constraint(equalTo: characterImageView.bottomAnchor, constant: 25),
            characterName.leadingAnchor.constraint(equalTo: Name.trailingAnchor, constant: 4),
            
            Gender.topAnchor.constraint(equalTo: Name.bottomAnchor, constant: 10),
            Gender.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            characterGender.topAnchor.constraint(equalTo: characterName.bottomAnchor, constant: 10),
            characterGender.leadingAnchor.constraint(equalTo: Gender.trailingAnchor, constant: 4),
            
            Specie.topAnchor.constraint(equalTo: Gender.bottomAnchor, constant: 10),
            Specie.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            characterSpecie.topAnchor.constraint(equalTo: characterGender.bottomAnchor, constant: 10),
            characterSpecie.leadingAnchor.constraint(equalTo: Specie.trailingAnchor, constant: 4),
            
            Status.topAnchor.constraint(equalTo: Specie.bottomAnchor, constant: 10),
            Status.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            
            characterStatus.topAnchor.constraint(equalTo: characterSpecie.bottomAnchor, constant: 10),
            characterStatus.leadingAnchor.constraint(equalTo: Status.trailingAnchor, constant: 4),
        ])
    }
    
    func configure(_ model: CharacterModel) {
        self.characterName.text = model.name
        self.characterSpecie.text = model.species
        self.characterStatus.text = model.status
        self.characterGender.text = model.gender
        self.characterImageView.kf.setImage(with: URL(string: model.image))
    }
}
