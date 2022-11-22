//
//  Tela02ViewController.swift
//  NavigationCurso
//
//  Created by Lucas de Ávila Moreira on 14/11/22.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .purple
    }
    
    //Botão da Tela 02 para voltar para a tela 01.
    @IBAction func tappedGoToScreen02Button(_ sender: UIButton) {
        
        //Quando trabalha-se com Navigation, para desinflar a tela aberta, deve-se utilizar o seguinte comando em um botão
        self.dismiss(animated: true)
    }
    
}
