//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func calcularIMC( pesoIntegral peso : Double, altura : Double) -> (imcCalculado: Double, mensajeDeSalida: String) {
    let imc = peso / (altura * altura)
    var mensaje = ""
    if(imc > 18.5 && imc < 25.0){
        mensaje  = "Peso Normal"
    }
    else{
        mensaje = "Sobrepeso"
    }
    let resultado = (imc, mensaje)
    return resultado
}

let resultado = calcularIMC(pesoIntegral: 60.0, altura: 1.60)
print(resultado.0)
print(resultado.1)

let (imc, _) = calcularIMC(pesoIntegral: 60.0, altura: 1.60)
print (imc)

let imcTupla = calcularIMC(pesoIntegral: 60.0, altura: 1.60)
imcTupla.imcCalculado

var pelicula : (nombre: String, añoDeSalida: Int, calificacion: Double ) = ("Matrix", 1990, 10.0)

