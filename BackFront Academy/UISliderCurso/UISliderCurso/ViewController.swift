//
//  ViewController.swift
//  UISliderCurso
//
//  Created by Lucas de Ávila Moreira on 14/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adicionado o valor mínimo do Slider
        slider.minimumValue = 0
        
        //Adicionado o valor padrão do Slider
        slider.value = 0
        
        //Adicionado o valor máximo do Slider
        slider.maximumValue = 20
        
        //Alterando a cor do preenchimento
        slider.minimumTrackTintColor = .red
        
        //Alterando a cor do que sobrou
        slider.maximumTrackTintColor = .blue
        
        //Alterando a cor do círculo do Slider.
        slider.thumbTintColor = .green
        
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        
        //Printando o valor.
        print(Int(sender.value))
    }
    

}

