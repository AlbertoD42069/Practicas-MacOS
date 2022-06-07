//
//  SegundaPractica.swift
//  PracticasMacOS
//
//  Created by Hector Guadalupe Climaco Flores on 07/06/22.
//

import Foundation
/* version uno de codigo solicitar nombre y apellido de un alumno
 -----------------------------------------------------------------*/


//typealias preguntar con paco
/*typealias Alumno = [String: Any]
var arrayAlumno = [Alumno]()

print("ingresa cantidad de aluumnos")
let cantidadAlumno = readLine()!
let numeroCantidadAlumno = Int(cantidadAlumno)!

for i in 0..<numeroCantidadAlumno {
    print("Ingresa Nombre Alumno \(i + 1):")
    let nombre = readLine()!
    
    print("Ingresa Apellido Alumno \(i + 1):")
    let apellido = readLine()!
    agregarAlumnoConNombre(nombre, conApellido: apellido)
}
listarTodosLosAlumnos()

func agregarAlumnoConNombre(_ nombre: String, conApellido apellido: String){
    let alumno: Alumno = ["nombre": nombre,
                          "apellido": apellido]
    arrayAlumno.append(alumno)
}
func listarTodosLosAlumnos(){
    for alumno in arrayAlumno {
        for dato in alumno {
            print("\(dato.key), \(dato.value)")
        }
    }
}
 -------------------------------------------------------------------------*/

/* version uno de codigo solicitar nombre y apellido de un alumno
 -----------------------------------------------------------------*/


typealias Alumno = [String: Any]
var arrayAlumno = [Alumno]()

let cantidad = solicitarEnteroConMensaje("")

for i in 0..<cantidad {
    let nombre = solicitarStringConMensaje("")
    let apellido = solicitarStringConMensaje("")
    agregarAlumnoConNombre(nombre, conApellido: apellido)
}
listarTodosLosAlumnos()

func agregarAlumnoConNombre(_ nombre: String, conApellido apellido: String){
    let alumno: Alumno = ["nombre": nombre,
                          "apellido": apellido]
    arrayAlumno.append(alumno)
}
func listarTodosLosAlumnos(){
    for alumno in arrayAlumno {
        for dato in alumno {
            print("\(dato.key), \(dato.value)")
        }
    }
}

func solicitarEnteroConMensaje(_ mensaje: String) -> Int {
    var input: String? = nil
    repeat {
        print(mensaje)
        input = readLine()
    }while input?.count == 0
    return Int(input!)!
}
func solicitarStringConMensaje(_ mensaje: String) -> String {
    var input: String? = nil
    repeat {
        print(mensaje)
        input = readLine()
    }while input?.count == 0
    return input!
}

