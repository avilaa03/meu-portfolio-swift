//
//  CustomTableViewCell.swift
//  DesafioCollectionTableViewCurso
//
//  Created by Lucas de Ávila Moreira on 21/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var labelText: UILabel!
    
    static let identifier = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell() {
        labelText.text = "Carros Esportivos"
        labelText.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
}
