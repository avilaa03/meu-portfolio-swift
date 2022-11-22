//
//  ViewController.swift
//  UIStepperCurso
//
//  Created by Lucas de Ávila Moreira on 14/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var valueLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Colocando valor min
        stepper.minimumValue = 0
        
        //Adicionando valor padrão
        stepper.value = 0
        
        //Colocando valor max
        stepper.maximumValue = 100
        
        //Colocando valor a cada clique no stepper.
        stepper.stepValue = 10
    }

    @IBAction func tappedStepper(_ sender: UIStepper) {
        
        //Printando o valor do stepper, usando sender.
        print(sender.value)
        
        //Atribuindo o valor do número da valueLabel ao valor do Stepper, utilizando sender.value
        //Converter o sender, que é um Double, para um Int.
        valueLabel.text = String(Int(sender.value))
    }
    

}

