//
//  CharacterDetailViewController.swift
//  RickAndMorty-Characters
//
//  Created by Alejandro Rodríguez Cañete on 30/8/23.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }
    
    init (CharacterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(CharacterDetailModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = CharacterDetailView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
