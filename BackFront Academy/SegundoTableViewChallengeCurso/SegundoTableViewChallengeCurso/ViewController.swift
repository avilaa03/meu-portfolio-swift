//
//  ViewController.swift
//  SegundoTableViewChallengeCurso
//
//  Created by Lucas de Ávila Moreira on 18/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var characters: [Characters] = [
        Characters(name: "Kirito", image: UIImage(named: "Kirito") ?? UIImage(), age: 14, job: "Swordsman", university: "Nippon", food: "Steak", weight: 60, size: 1.70),
        Characters(name: "Mario", image: UIImage(named: "Mario") ?? UIImage(), age: 50, job: "Encanador", university: "Mushroom Island", food: "Cogumelo", weight: 200, size: 1.20),
        Characters(name: "Link", image: UIImage(named: "Link") ?? UIImage(), age: 20, job: "Cavaleiro de Hyrule", university: "Hyrule", food: "Maçã", weight: 70, size: 1.75)]
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CharacterTableViewCell.nib(), forCellReuseIdentifier: CharacterTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.identifier, for: indexPath) as? CharacterTableViewCell
        
        cell?.setupCell(characters[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}

