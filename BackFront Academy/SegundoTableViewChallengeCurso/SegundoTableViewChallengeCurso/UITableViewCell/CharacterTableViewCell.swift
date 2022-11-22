//
//  CharacterTableViewCell.swift
//  SegundoTableViewChallengeCurso
//
//  Created by Lucas de Ávila Moreira on 18/11/22.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet var labelName: UILabel!
    
    @IBOutlet var imageChar: UIImageView!
    
    @IBOutlet var labelAge: UILabel!
    
    @IBOutlet var labelJob: UILabel!
    
    @IBOutlet var labelUniv: UILabel!
    
    @IBOutlet var labelFood: UILabel!
    
    @IBOutlet var labelWeig: UILabel!
    
    @IBOutlet var labelSize: UILabel!
    
    static let identifier: String = "CharacterTableViewCell"
    
    static func nib() -> UINib {
        UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(_ data: Characters) {
        labelName.text = data.name
        imageChar.image = data.image
        labelAge.text = String(data.age)
        labelJob.text = data.job
        labelUniv.text = data.university
        labelFood.text = data.food
        labelWeig.text = String(data.weight)
        labelSize.text = String(data.size)
    }



}
