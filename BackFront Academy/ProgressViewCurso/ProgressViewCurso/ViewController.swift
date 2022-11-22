//
//  ViewController.swift
//  ProgressViewCurso
//
//  Created by Lucas de Ávila Moreira on 13/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressView: UIProgressView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Progresso da barra de progresso.
//        progressView.progress = 0.7
        
        //Modificando a cor da barra de progresso (parte preenchida).
        progressView.tintColor = .green
        
        //Modificando a cor da barra (parte não preenchida), utilizando .withAlphaComponent(0.6) que deixa ela com 60% de cor, para ficar mais apagada.
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.6)
        
        //Atribuindo a uma variável o progresso total de 100, o padrão de uma progressView é de 0.0 a 1
        let total = Progress(totalUnitCount: 100)
        
        //Atribuindo o valor do progresso da variável em 25
        total.completedUnitCount = 25
        
        //Indicando a variável que queremos atribuir ao nosso progressView, colocando uma animação ao aparecer a barra de progresso.
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
        
        
        
    }


}

