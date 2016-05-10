//: Playground - noun: a place where people can play

import UIKit

var numero : Int? = nil

numero = 5
numero = 6

if numero != nil {
    let numeroString : String = String(numero!)
    print(numeroString)
}

func profesores ( id: String ) -> String? {
    let diccionarioDeProfesores = ["007": "David",
                                   "008": "Martin",
                                   "009": "Rafa",
                                   "010": "Victor"]
    let nombre : String? = diccionarioDeProfesores[id]
    return nombre
}

if let nombre = profesores ("012"){
    nombre
}
else{
    print("no hay")
}

let nombreDos = profesores("009")
if nombreDos != nil {
    nombreDos
}
else{
    print("no hay man")
}
