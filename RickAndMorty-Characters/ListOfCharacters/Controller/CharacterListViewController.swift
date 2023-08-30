//
//  CharacterListViewController.swift
//  RickAndMorty-Characters
//
//  Created by Alejandro Rodríguez Cañete on 29/8/23.
//

import UIKit

class CharacterListViewController: UIViewController {
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = ListOfCharactersAPIClient()
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    override func loadView() {
        view = CharacterListView()
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("index \(index)")
            
            // Present New VC
            guard let dataSource = self?.tableViewDataSource else { return }
            let characterModel = dataSource.characters[index]
            let characterModelDetailViewController = CharacterDetailViewController(CharacterDetailModel: characterModel)
            self?.present(characterModelDetailViewController, animated: true)
        }
        
        Task {
            let characters = await apiClient.getListOfCharacters()
            print("Characters \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }
}

