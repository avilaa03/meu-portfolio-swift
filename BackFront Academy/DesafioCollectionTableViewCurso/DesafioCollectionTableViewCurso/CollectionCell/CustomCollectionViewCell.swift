//
//  CustomCollectionViewCell.swift
//  DesafioCollectionTableViewCurso
//
//  Created by Lucas de Ávila Moreira on 21/11/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.contentMode = .scaleAspectFill
    }
    
    func setupCell(_ data: String) {
        imageView.image = UIImage(named: data)
    }

}
