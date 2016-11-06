//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Virginia García Tomé on 6/11/16.
//  Copyright © 2016 JI Arandilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    
    @IBOutlet weak var tipoHamburguesa: UILabel!
    
    let paisRand = ColeccionDePaises()
    let hamburguesaRand = ColeccionDeHamburguesa()
    
    let colores = Colores()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func quieroUnaHamburguesa() {
        pais.text = paisRand.obtenPais()
        tipoHamburguesa.text = hamburguesaRand.obtenHamburguesa()
        
        let colorAleatorio = colores.devuelveColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
    
    
}

