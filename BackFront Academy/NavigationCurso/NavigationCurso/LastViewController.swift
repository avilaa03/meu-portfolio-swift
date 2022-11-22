//
//  LastViewController.swift
//  NavigationCurso
//
//  Created by Lucas de Ávila Moreira on 14/11/22.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedGoFirstScreen(_ sender: UIBarButtonItem) {
        
        //Quando trabalha-se com NavigationController ao em vez de Modal utiliza-se o popViewController, com o seguinte código.
//        self.navigationController?.popViewController(animated: true)
        
        //Quando precisa ir para a tela Root (Raiz), utiliza-se popToRootViewController.
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
   
}
