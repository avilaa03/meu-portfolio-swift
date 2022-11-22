//
//  Tela02VC.swift
//  NavigationAvancadoCurso
//
//  Created by Lucas de Ávila Moreira on 15/11/22.
//

import UIKit

class Tela02VC: UIViewController {
    
    //------------------------------------------------------
    
    //IBOutlet UILabel da Label da Tela02VC.Storyboard
    @IBOutlet weak var nameLabel: UILabel!
    
    //------------------------------------------------------
    
    // 01 Forma: Variável para transformar a Label em Opcional
//    var name: String?
    
    //------------------------------------------------------
    
    // 02 Forma para transitar dados entre telas
    
    let name: String
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //------------------------------------------------------
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //------------------------------------------------------
        
        // 01 Forma: Combinando o texto da Label em uma variável opcional, para ser utilizado na ViewController.swift
        //Utilizado da segunda forma.
        nameLabel.text = name

        //------------------------------------------------------
        
    }

}
