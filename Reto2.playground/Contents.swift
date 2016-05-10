//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
        }
        return (actual: velocidad.rawValue, velocidadEnCadena: "\(velocidad)")
    }
}

var miAuto = Auto()
print("\(miAuto.velocidad.rawValue),\(miAuto.velocidad)")

for i in 1...20 {
    var cambio = miAuto.cambioDeVelocidad()
    print("\(cambio.actual),\(cambio.velocidadEnCadena)")
}
