//: Playground - noun: a place where people can play

import UIKit

class Producto {
    let marca : String
    var precio : Double
    
    init( marca : String, precio : Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func calcularPrecioDeDescuento( porcentajeDeDescuento : Double) -> Double{
        return precio - (precio * porcentajeDeDescuento / 100)
    }
}

enum Seccion {
    case Introduccion, Indica, Conclusiones
    init(){
        self = .Introduccion
    }
}

class Libro : Producto {
    var seccion = Seccion()
    
    override func calcularPrecioDeDescuento( porcentajeDeDescuento : Double) -> Double{
        return super.calcularPrecioDeDescuento(porcentajeDeDescuento)
    }
}

/*
var miTelefono = Producto(marca: "Iphone 6", precio: 169.00 )
miTelefono.marca
miTelefono.precio
print(miTelefono.calcularPrecioDeDescuento(30))
*/

var libro = Libro(marca: "MG", precio: 54.5)
libro.marca
libro.precio
libro.seccion



