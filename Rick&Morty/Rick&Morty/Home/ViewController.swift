//
//  ViewController.swift
//  Rick&Morty
//
//  Created by Dani on 2/11/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    let network = NetworkService.shared
    var characterList: CharacterList?

    // MARK: - IBOutlets


    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        network.getCharacters(page: 1) { result in
            switch result {
            case .success(let characterList):
                self.characterList = characterList
            case .failure(let string):
                print(string)
            }
        }
    }
}
