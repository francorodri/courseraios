//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Rodo Nore on 5/10/16.
//  Copyright © 2016 Rodo Nore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var paises = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesas()
    
    @IBOutlet weak var labelPaises: UILabel!
    @IBOutlet weak var labelHamburguesas: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func quieroUnaHamburguesa() {
        labelPaises.text = paises.obtenPais()
        labelHamburguesas.text = "\(hamburguesas.obtenHamburguesa()) $\(hamburguesas.obtenPrecio())"
        
    }
}

