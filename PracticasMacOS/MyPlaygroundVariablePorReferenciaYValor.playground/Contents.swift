import Cocoa

/* ----------------- asignacion por valor ----------------------------*/
var nombre1 = "alberto"

var nombre2 = nombre1

nombre1
nombre2

nombre1 = "juan"
nombre2
/* -------------------------------------------------------------------*/

/* ----------------- asignacion por referencia ----------------------------*/

var arrayNombres1 : NSMutableArray = ["Juan", "Jesus", "Pedro"]
var arratNombres2 = arrayNombres1

arratNombres2.add("Lucas")

arrayNombres1

/* ------------------------------------------------------------------------*/
