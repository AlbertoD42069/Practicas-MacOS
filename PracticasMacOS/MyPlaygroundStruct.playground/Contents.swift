import Cocoa

/* ------------------------ MODELOS DE DATOS -------------------------- */
/* REPRESENTACION DE UNA ENTIDAD, OBJETO DE LA REALIDAD */
/*
 STRUCT
 CLASS
 ENUM -> INVESTIGAR MAS
 TUPLE -> INVESTIGAR MAS
 */
/*
 notas para mi. investigar sobrecarga de modelo de datos
 */

/* ----------------------- ENCAMPSULAMIENTO --------------------------- */
 /* ES EL NIVEL O NIVELES DE PRIVACIDAD Y ACCESO QUE SE LE DEFINE A UN MODELO DE DATOS */

/*
 INTERNAL
    * ES EL NIVEL POR DEFECTO DE TODO LO QUE ESCRIBIMOS
    * ES UN ELEMENTO PUBLICO (ojo con esto) solo dentro del modulo donde se encuuenta, es privado fuera de su modulo
    * es el por defecto de todo modelo de datos, funciones, atributos, etc.
    * solo permite herencia dentro de su modulo
 
 PUBLIC
    * es un elemento publico  dentro de su modulo y fuera de el
    * solo permite herencia dentro de su modulo
    * tambien permite hacer sobrecarga de metodos y propiedades dentro de su modulo
    
OPEN
    * es un elemento publico dentro de su modulo y fuera de el
    * permite herencia dentro de su modulo y fuera de el
    * tambien permite hacer sobrecarga de metodos y propiedades dentro y fuera de su modulo
 PRIVATE
    * Es un elemento privado y nadie mas lo puede ver ...
    * Solo es visible dentro de su contexto padre
 fileprivate
    * Es un elemento privado pero dentro de un archivo
    * El contexto de privacidad no se ve definido por el modelo en el que se encuetro, si no por el archivo donde esta definido.
 FINAL
    * te bloquea herencia y sobrecarga
*/
//todo modelo de datos necesita proceso de construccion, mediante la inyeccion de dependencias
/*
 una instancia es la representacion de un modelo en memoria, es decir el modelo digitalizado
 */
/*
 @discardableResult
 sirve para indicar que el resutado de una operacion de una funcion puede ser ignorado en su uso
 */


/*
 variables computadas
 es una variable que calcula su valor cada vez que se usa. NO GUARDA DATOS, SON NO STORAGE(NOTA PARA MI. INVESTIGAR QUE ES EL STORAGE) y deben de ser mutables para generar siempre distintos posibles resultados en el calculo de su valor
 */
struct Alumno {
    //las variables que son private no se pueden usar fuera del contexto de la struct, cuando las variables son privadas hay que inicializarlas con un costructor para poder emplearlas siendo privadas, aun asi nadie mas puede utilizar y ver las variables privadas.
    
    private let nombre: String
    private let apellido: String
    private(set) var edad: Int
    
    let direccion: String = "En algun lugar"
    
    //variable computada. como buena practica de programacion emplear la palabra self.
    var nombreCompleto: String {
        "Persona de nombre: \(self.nombre) con apellido\(self.apellido)"
    }
    var iniciales: String {
        let iNombre = self.nombre.prefix(1).uppercased()
        let iApellido = self.apellido.prefix(1).uppercased()
        return iNombre + iApellido
    }
    //variable storage: no es lo mismo que la variables computadas ya que tiene asignada ya su valor, por lo que al albrir corchetes se entra al ciclo de vida de la variable
    var ubiGeo: String {
        get {
            return "\(self.ciudad) - \(self.departamento)"
        }
        set {
            let datos = newValue.split(separator: "-")
            self.ciudad = String(datos.first!)
            self.departamento = String(datos.last!)
        }
    }
    private var ciudad = " "
    private var departamento = " " {
        willSet {
            print("estoy empezando a guarda el dato en memoria, aun no la puuedo usar")
        }
        didSet {
            print("ya lo tengo en memoria y listo para usar ")
        }
    }
    
    func inmprimirUbiGeo () {
        print("Ciudad \(self.ciudad)\n Departamento: \(self.departamento) ")
    }
    init(nombre:String, apellido: String, edad: Int) {
        self.nombre = nombre
        self.apellido = apellido
        self.edad = edad
    }
    //esta funcion solo pueden ser usadas por el variables mutables(var)
    @discardableResult mutating func cumplirAños() -> String {
        self.edad += 1
        return "he cumplido \(self.edad)"
    }
}
let alumnoInmutable = Alumno(nombre: "Persona", apellido: "Con apellido", edad: 20)
alumnoInmutable.direccion
alumnoInmutable.nombreCompleto
alumnoInmutable.iniciales
alumnoInmutable.edad

var alumnoMutable = Alumno(nombre: "Persona", apellido: "Con apellido", edad: 20)
alumnoMutable.ubiGeo = "trujillo-la libertad"
alumnoMutable.inmprimirUbiGeo()

alumnoMutable.cumplirAños()
alumnoMutable.cumplirAños()

let mensaje = alumnoMutable.cumplirAños()
print(mensaje)
