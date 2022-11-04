//
//  CharacterDetailViewController.swift
//  Rick&Morty
//
//  Created by Dani on 2/11/22.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    // MARK: - Properties
    var character: Character? = nil

    // MARK: - IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = character?.name
        let url = URL(string: character?.image ?? "")
        let data = try? Data(contentsOf: url!)
        characterImage.image = UIImage(data: data!)
        statusLabel.text = "Estado: \(character?.status ?? "")"
        genreLabel.text = "Genero: \(character?.gender ?? "")"
        let typeText = character?.type == "" ? "Tipo: Sin Tipo" : "Tipo: \(character?.type ?? "Sin Tipo")"
        typeLabel.text = typeText
        speciesLabel.text = "Especie: \(character?.species ?? "")"

    }
}
