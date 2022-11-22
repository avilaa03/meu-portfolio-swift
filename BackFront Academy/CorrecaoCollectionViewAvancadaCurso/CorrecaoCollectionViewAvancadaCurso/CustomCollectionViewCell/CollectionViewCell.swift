//
//  CollectionViewCell.swift
//  CorrecaoCollectionViewAvancadaCurso
//
//  Created by Lucas de Ávila Moreira on 21/11/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CollectionViewCell"
    
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
