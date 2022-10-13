//
//  ViewController.swift
//  Gerador de Números
//
//  Created by Lucas de Ávila Moreira on 08/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendaResultado: UILabel!
    @IBAction func gerarNumero(_ sender: Any) {
        
        var numero = arc4random_uniform(11)
        legendaResultado.text = String(numero)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

