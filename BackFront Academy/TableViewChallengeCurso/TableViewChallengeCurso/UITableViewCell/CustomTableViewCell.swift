//
//  CustomTableViewCell.swift
//  TableViewChallengeCurso
//
//  Created by Lucas de Ávila Moreira on 18/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var titleImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Para tirar o fundo cinza
        self.selectionStyle = .none
    }
    
    func setupCell(_ data: Car) {
        titleLabel.text = data.name
        titleImage.image = data.brand
    }
    
    
}
