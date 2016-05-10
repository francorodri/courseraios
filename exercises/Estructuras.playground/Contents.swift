//: Playground - noun: a place where people can play

import UIKit

struct Automovil{
    let marca : String
    var precio : Double
    
    init(marca : String, precio : Double){
        self.marca = marca
        self.precio = precio
    }
    
    func obtenerDescripcion() -> String {
        return "\(marca) \(precio)"
    }
}

var auto = Automovil(marca: "Mazda", precio: 35000000.00)
auto.marca
auto.precio
auto.precio = 98000000.00
auto.obtenerDescripcion()

