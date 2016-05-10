//
//  Datos.swift
//  Hamburguesas
//
//  Created by Rodo Nore on 5/10/16.
//  Copyright © 2016 Rodo Nore. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    var paises : [String] = [
        "Argentina",
        "Bolivia",
        "Brasil",
        "Chile",
        "Colombia",
        "Costa Rica",
        "Cuba",
        "Ecuador",
        "El Salvador",
        "Guatemala",
        "Haití",
        "Honduras",
        "México",
        "Nicaragua",
        "Panamá",
        "Paraguay",
        "Perú",
        "República Dominicana",
        "Uruguay",
        "Venezuela"
    ]
    
    func obtenPais() -> String {
        return paises[Int(arc4random()) % paises.count]
    }
}

class ColeccionDeHamburguesas {
    var hamburguesas : [String] = [
        "Hamburguesa de Ternera y Bacon",
        "Superburguer",
        "Hamburguesa Doble",
        "Hamburguesa de carne",
        "Hamburguesa de pollo",
        "Hamburguesa mixta",
        "Hamburguesa con tocineta",
        "Hamburguesa doble queso",
        "Hamburgusa vegetariana",
        "Hamburguesa especial",
        "Burguer King",
        "Big Mac",
        "Hamburguesa de Ternera",
        "Cheesburguer",
        "Bacon Double Cheesburguer",
        "Hamburguesa de queso con aros de cebolla",
        "The Big Tasty",
        "Classic Burguer",
        "Johnny Rockets Classic",
        "Super Corral"
    ]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
    
    func obtenPrecio() -> Double {
        return Double(arc4random()) % 40.0
    }
}
