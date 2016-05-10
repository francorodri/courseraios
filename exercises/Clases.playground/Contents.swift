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
    let añoDePublicacion : Int
    
    var paginas = 1000
    var palabrasPorPagina = 60
    var contieneFormatoDigital : Bool?
    
    var numeroDePalabrasDelLibro : Int{
        get {
            return paginas * palabrasPorPagina
        }
        set {
            paginas = newValue
            palabrasPorPagina = newValue / 100
        }
    }
    
    init(marca: String, precio: Double, añoDePublicacion : Int) {
        self.añoDePublicacion = añoDePublicacion
        super.init(marca: marca, precio: precio)
    }
    
    convenience init(marca : String){
        self.init(marca: marca, precio: 0.0, añoDePublicacion: 2001)
    }
    
    override func calcularPrecioDeDescuento( porcentajeDeDescuento : Double) -> Double {
        return super.calcularPrecioDeDescuento(porcentajeDeDescuento)
    }
}

/*
var miTelefono = Producto(marca: "Iphone 6", precio: 169.00 )
miTelefono.marca
miTelefono.precio
print(miTelefono.calcularPrecioDeDescuento(30))
*/

var libro = Libro(marca: "MG", precio: 54.5, añoDePublicacion: 1990)
libro.marca
libro.precio
libro.seccion
libro.añoDePublicacion

var nuevoLibro = Libro(marca: "BG")
nuevoLibro.marca
nuevoLibro.precio
nuevoLibro.seccion
nuevoLibro.añoDePublicacion
nuevoLibro.numeroDePalabrasDelLibro
nuevoLibro.numeroDePalabrasDelLibro = 1000
nuevoLibro.numeroDePalabrasDelLibro
nuevoLibro.contieneFormatoDigital = false

if let formatoDigital = nuevoLibro.contieneFormatoDigital {
    if formatoDigital{
        print("Tmbn es digital")
    }
    else{
        print("no contiene digital")
    }
}

