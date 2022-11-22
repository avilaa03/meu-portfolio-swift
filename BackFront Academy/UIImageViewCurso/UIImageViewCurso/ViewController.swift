//
//  ViewController.swift
//  UIImageViewCurso
//
//  Created by Lucas de Ávila Moreira on 14/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logoImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Atribuindo ao ImageView uma imagem com nome diamond que está em Assets.
        logoImageView.image = UIImage(named: "diamond")
        
        //Atribuindo uma imagem que não se encontra em Assets, mas do padrão do Xcode. (usando systemName)
//        logoImageView.image = UIImage(systemName: "brain.head.profile")
        
        //Modificando a cor de uma imagem, deve estar na propriedade Render As nos Assets como Template, imagens padrões do Xcode vem com Template por padrão.
        logoImageView.tintColor = .red
        
        //Adicionando a escala em Aspect Fit.
        logoImageView.contentMode = .scaleAspectFit
    }


}

