//
//  CustomTableViewCell.swift
//  CorrecaoCollectionViewAvancadaCurso
//
//  Created by Lucas de Ávila Moreira on 21/11/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        UINib(nibName: self.identifier, bundle: nil)
    }
    
    var listCar: [String] = ["Fiat", "Honda", "Hyundai", "Ferrari", "Lamborghini", "Volkswagen"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "Carros Esportivos"
        titleLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell
        cell?.setupCell(listCar[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.width, height: 353)
    }
    
}
