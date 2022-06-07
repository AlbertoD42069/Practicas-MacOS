//
//  PrimeraPractica.swift
//  PracticasMacOS
//
//  Created by Hector Guadalupe Climaco Flores on 07/06/22.
//

import Foundation

var dato1: String? = nil
repeat {
print("ingrese el primer numero")
    dato1 = readLine()!
}while dato1 == nil

var dato2:String? = nil
repeat {
print("ingresa el segundo numero")
    dato2 = readLine()!
} while dato2 == nil

//var dato2 = readLine()!

var numero1 = Int(dato1!)!
var numero2 = Int(dato2!)!
//calcula el maximo comun divisor (MCD)
while numero2 != 0 {
    //calcular resto
    let resto = numero1 % numero2
    numero1 = numero2
    numero2 = resto
}
print("el maximo comun denominador (MCD) \(numero1)")
