//
//  CustomCollectionViewCell.swift
//  EstudoControllerTableViewCurso
//
//  Created by Lucas de Ávila Moreira on 22/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageVIew: UIImageView!

    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(_ data: String) {
        imageVIew.image = UIImage(named: data)
    }

}
