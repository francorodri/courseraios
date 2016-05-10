//: Playground - noun: a place where people can play

import UIKit

let ciudades = ["Cancun", "Guadalajara", "DF", "Monterrey"]

enum Ciudad : Int{
    case Cancun = 450, Guadalajara = 10, DF = 78, Monterrey = 512, Merida
    
    func calcularDistancia() -> Int {
        return Ciudad.Cancun.rawValue - self.rawValue
    }
    init(){
        self = .Cancun
    }
}

var ciudad = Ciudad()
ciudad.rawValue
ciudad.calcularDistancia()