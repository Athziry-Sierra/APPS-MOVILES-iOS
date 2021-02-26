import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona{
    var saludo = "", paso = 0
    
    func Saludar(mensaje:String){
        self.saludo = mensaje + "mucho gusto"
    }
    func Caminar(pasos:Int){
        self.paso = pasos
    }
}

var Mujer = Persona()
Mujer.Saludar(mensaje:"Hola, ")

print("Mujer:\(String(Mujer.saludo))")
print("La mujer camino: \(String(Mujer.paso))")

//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla
{
    var alto:Int
    var ancho:Int
    
    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
    
    func TamanoPantalla() -> (Int, Int){
        return(self.alto, self.ancho)
    }
}
var tamano = Pantalla (alto: 1024, ancho: 768)
tamano.TamanoPantalla()

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int{
    var dias: Int {
        return self*12*30
    }
    func horas() -> Int {
        return self*24*60
    }
}

10.dias
10.horas()
//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7

extension Calendar {
    enum diaS: String , CaseIterable , CustomStringConvertible {
        case domingo, lunes , martes , miercoles , jueves ,viernes , sabado
        var description: String {rawValue.capitalized}
        var value: Int { Self.allCases.firstIndex(where: {$0.rawValue == rawValue})!+1}
        
    }
}
let domingo = Calendar.diaS.domingo
print(domingo)
print(domingo.value)

/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
var existe: Int?

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
let dias = ["GDL":120,"PUE":300,"MTY":100,"CDMX":200]
existe = dias ["DF"]

if dias ["DF"] != nil {
    print("Si existe")
}else{
    print("No existe")
}

