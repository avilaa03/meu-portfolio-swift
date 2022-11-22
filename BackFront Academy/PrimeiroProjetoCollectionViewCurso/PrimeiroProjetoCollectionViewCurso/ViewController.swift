//
//  ViewController.swift
//  PrimeiroProjetoCollectionViewCurso
//
//  Created by Lucas de Ávila Moreira on 20/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var data: [String] = ["Honda", "Hyundai", "Ferrari", "Lamborghini", "Fiat"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configCollectionView()
    }
    
    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //Alterando o scrollDirection de forma programática
        //Transformando o collectionView.collectionViewLayout em NÃO OPCIONAL.
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        
        cell?.setupCell(data[indexPath.row])
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
}

