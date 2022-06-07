import Cocoa

//create un set. un set no es un array, si no que engloba un array
/* al colocar en mayuscula la primera letra, al imprimirlo se ordena
var setNumer: Set<String> = ["A Una persona" , " E Otra persona", "B Y Otra persona"]
print(setNumer)

for interdor in setNumer.enumerated() {
    print("\(interdor.offset) \(interdor.element)")
}
let nombresOrdenados = setNumer.sorted()
print(nombresOrdenados)
 */

let setAutoAudi: Set = ["audi A","audi B", "audi C"]
let setAuto: Set = ["BMW A", "BMW B", "Toyota A", "Nissan"]

//unir dos setArray
setAutoAudi.union(setAuto)
// la propiedad subtract en un array set modifica el primer setArray
//setAutoAudi.subtract(setAuto)
// la propiedad subtracting devuelve un nuevo setArray
setAutoAudi.subtracting(setAuto)
