//
//  ViewController.swift
//  Programa 1
//
//  Created by Usuário Convidado on 11/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calcular(_ sender: Any) {
        //print("Hello World!")
        
        let a = Atleta()
        a.altura = Float(txtAltura.text!)!
        a.peso = Float(txtPeso.text!)!
        
        //print(a.calcularImc())
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: "O seu IMC é \(a.calcularImc()), bom treino",
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default))
        
        present(alerta, animated: true)
    }
}

