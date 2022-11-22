//
//  ViewController.swift
//  TableViewChallengeCurso
//
//  Created by Lucas de Ávila Moreira on 18/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var cars: [Car] =
       [Car(name: "Honda", brand: UIImage(named: "Honda") ?? UIImage()),
        Car(name: "Fiat", brand: UIImage(named: "Fiat") ?? UIImage()),
        Car(name: "Ferrari", brand: UIImage(named: "Ferrari") ?? UIImage()),
        Car(name: "Hyundai", brand: UIImage(named: "Hyundai") ?? UIImage()),
        Car(name: "Lamborghini", brand: UIImage(named: "Lamborghini") ?? UIImage()),
        Car(name: "Volkswagen", brand: UIImage(named: "Volkswagen") ?? UIImage())]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }
    
    func configTableView () {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        
        cell?.setupCell(cars[indexPath.row])
        
        return cell ?? CustomTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(cars[indexPath.row].name)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    
}
