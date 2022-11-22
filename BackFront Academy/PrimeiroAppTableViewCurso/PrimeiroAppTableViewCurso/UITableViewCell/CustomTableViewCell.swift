//
//  CustomTableViewCell.swift
//  PrimeiroAppTableViewCurso
//
//  Created by Lucas de Ávila Moreira on 16/11/22.
//

import UIKit

//Não alterar o nome dos files de célula, para não dar erro.
class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    //O que fazer após criar a célula..
    
    //Static é utilizado quando não necessita de uma instância, deste modo, tudo o que utiliza com static, não pode ter nenhuma dependência externa. Para usar algo externo PRECISA da utilização do static no uso externo também.
    
    //Constante identificadora.
    static let identifier: String = "CustomTableViewCell"
    
    //Nib é uma referência para indicar qual é o arquivo XIB
    //Indicando qual é o arquivo responsável pela customização da célula.
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    //awakeForNib é igual o didLoad de uma ViewController, mas de uma célula.
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(title: String) {
        titleLabel.text = title
    }

}
