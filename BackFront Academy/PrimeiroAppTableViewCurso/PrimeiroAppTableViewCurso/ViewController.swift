//
//  ViewController.swift
//  PrimeiroAppTableViewCurso
//
//  Created by Lucas de Ávila Moreira on 16/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var listName: [String] = ["Lucas", "Caio", "Matheus", "Felipe", "Elon Musk", "Batman", "Popeye"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Não esquecer de chamar a função para o .delegate e .dataSource
        self.configTableView()
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        //Adicionar um identificador
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

}

//MARK: Protocols TableView

extension ViewController: UITableViewDelegate, UITableViewDataSource {

//  Método obrigatório para o Protocolo UITableViewDataSource, que mostra o número de Rows (células) que teremos dentro da UITableView.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Utilizando o .count para melhor manutenção, é o número de Strings que há dentro do array listName.
        return listName.count
    }
    
    //Segundo método obrigatório, que pede para retornar uma célula, criada no grupo UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Utilizando a célula criada no grupo UITableViewCell
        
        //O as? é utilizado para mostrar qual é o tipo que está trabalhando dentro do método, que seria neste método é do tipo CustomTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        
        //indexPath.row é o número de repetições que a cellForRowAt fará, que se dá pelo retorno do valor apresentado em numberOfRowsInSection
        cell?.setupCell(title: listName[indexPath.row])
        
        //Utilização de ?? pois a célula é opcional.
        return cell ?? UITableViewCell()
    }
    
    //Função que executa ao pressionar em uma célula
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Print para mostrar qual célula que foi selecionada.
        print("O nome que foi selecionado foi: \(listName[indexPath.row])")
    }
    
    //Função para indicar a altura da célula.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}

