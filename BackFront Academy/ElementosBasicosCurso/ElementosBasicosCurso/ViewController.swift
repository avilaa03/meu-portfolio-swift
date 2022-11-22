//
//  ViewController.swift
//  ElementosBasicosCurso
//
//  Created by Lucas de Ávila Moreira on 06/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bemVindoLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Teste UILabel"
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Botão pressionado")
        view.backgroundColor = .green
    }
    
}

