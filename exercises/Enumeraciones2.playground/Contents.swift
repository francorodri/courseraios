//: Playground - noun: a place where people can play

import UIKit

enum LecturadeDatos{
    case Digitos(Int, Int, Int)
    case QrCodigo(String)
}

var entradaDatos = LecturadeDatos.Digitos(3,4,5)

entradaDatos = .QrCodigo("AABBCD")

switch entradaDatos{
case .Digitos(let uno, let dos, let tres):
        print ("\(uno) \(dos) \(tres)")
case .QrCodigo(let qr):
        print(qr)
}