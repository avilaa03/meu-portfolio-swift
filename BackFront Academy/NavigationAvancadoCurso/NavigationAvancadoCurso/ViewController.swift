//
//  ViewController.swift
//  NavigationAvancadoCurso
//
//  Created by Lucas de Ávila Moreira on 15/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    //------------------------------------------------------
    
    //IBOutlet UITextField da Main.Storyboard, objetivo de colocar o que está escrito aqui na Label da Tela02VC.Storyboard
    @IBOutlet weak var nameTextField: UITextField!
    
    //------------------------------------------------------
    
    //MARK: LifeCycle
    
    //Primeiro LifeCycle do app é o viewDidLoad().
    //A função viewDidLoad() só vai ser rodada uma única vez dentro do LifeCycle do App.

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Printando a função com print(#function), que seria a viewDidLoad() que ele está incluso.
        print(#function)
        
    }
    
    //Segundo LifeCycle do app é o viewWillAppear().
    //Esta função é disparada todas as vezes que a View da ViewController for ser apresentada, como se fosse uma preparação de antes de ser apresentado.
    //Utiliza-se para fazer algumas configurações para inicializar coisas antes da view aparecer.
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    //Terceiro LifeCycle do app é o viewDidAppear()
    //Disparado quando a tela está totalmente apresentada.
    //Mais utilizado quando se trabalha com Geolocalização.
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    //Quarto LifeCycle do app é o viewWillDisappear()
    //Disparado antes de sair da View
    //Quando querer parar uma Geolocalização ou Animação
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    //Quinto LifeCycle do app é o viewDidDisappear()
    //Disparado quando a View desaparecer totalmente.
    //Também utilizado quando parar uma Geolocalização ou Animação.
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
    
    
    //------------------------------------------------------

    //Programando para o Botão, ao ser clicado, apresentar uma nova Storyboard com NavigationController ou Modal, feito de forma totalmente programatica.
    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        
        
        //MARK: Método Simples de Navegação
        
        //------------------------------------------------------
        
        //Chamando uma Nova Storyboard não relacionada a ViewController.swift em questão de forma programatica. (RECOMENDADO)
        
///        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        //------------------------------------------------------
        
        //MARK: NavigationController
        
        //Exibir NavigationController de forma programatica
        
        //obs: UIViewController() seria uma Modal vazia, caso não haja nada dentro de "vc", que seria a Storyboard não relacionada a esta ViewController.swift.
        //obs2: Com Navigation, deve-se ter uma root ViewController criada, pois se não o valor de .navigationController será nil, e não ira funcionar.
        
//        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        //------------------------------------------------------
        
        //MARK: Modal
        
        //Deixar a tela do Modal em Fullscreen
        
//        vc?.modalPresentationStyle = .fullScreen
        
        //Exibir Modal de forma programatica
        
        //obs: Não é necessário a root ViewController.

//        self.present(vc ?? UIViewController(), animated: true)
        
        //------------------------------------------------------
        
        //MARK: Forma 01 para transitar dados entre telas.
        
        //Colocando a String escrita no TextField da ViewController.Storyboard na Label do Tela02VC.Storyboard, transformando na Tela02VC.swift a Label na variável "name".
        //Não funciona ir diretamente pela Label sem criar a variável, pois está dando Force Unwrap na Label, que ainda não existe, ele não tem vida e não foi instanciado ainda.
        
//        vc?.name = self.nameTextField.text
        
        //------------------------------------------------------
        
        
        //MARK: Forma 02 Transitando dados entre telas
        
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") { coder in return Tela02VC(coder: coder, name: self.nameTextField.text ?? "")
        }
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
    }
    
}

