//
//  CustomTableViewCell.swift
//  EstudoControllerTableViewCurso
//
//  Created by Lucas de Ávila Moreira on 22/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [String] = ["Fiat", "Honda", "Hyundai", "Ferrari", "Lamborghini", "Volkswagen"]
    
    static let identifier: String = "CustomTableViewCell"
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: identifier.self, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        labelText.text = "Carros Esportivos"
        labelText.font = UIFont(name:"HelveticaNeue-Bold", size: 18.0)
        configCollectionView()
    }
    

}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        cell?.setupCell(data[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.width, height: 350)
    }
    
    
}
