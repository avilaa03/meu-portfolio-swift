//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionViewCurso
//
//  Created by Lucas de Ávila Moreira on 20/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }
    
    func setupCell(_ data: String) {
        carImageView.image = UIImage(named: data)
    }

}
