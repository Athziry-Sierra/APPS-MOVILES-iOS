import UIKit
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*: 
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/
var entero = 10
var decimal = 4.40
var float = -3.03
var t1 = "Hola mundo"

var cadena:String = String()
cadena = "Declarativo ,"+t1
print("Contenido:\(cadena)")


var numero: Int = 10
var num:Decimal = 4.40
var num3:Float = -3.03

/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
let texto: String = "Hola"
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.

var n: Int = 11

/*: 
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var Numeros:Array<Int> = Array<Int>()
Numeros.append(1)
Numeros.append(2)
Numeros.append(3)
Numeros.append(4)
Numeros.append(5)
Numeros.append(6)
Numeros.append(7)
Numeros.append(8)
Numeros.append(9)
Numeros.append(10)
Numeros.count
print("Arreglo:\(Numeros)")


//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"
var diasSemana:Dictionary < Int, String> = Dictionary < Int , String>()
diasSemana = [1: "Lunes"]
diasSemana = [2: "Martes"]
diasSemana = [3: "Miercoles"]
diasSemana = [4: "Jueves"]
diasSemana = [5: "Viernes"]
diasSemana = [6: "Sabado"]
diasSemana = [7: "Domingo"]
print("Calendario:\(diasSemana)")

//CONDICIONES Y CICLOS
//A) DECLARA LA VARIABLE "DATOS" CON LOS VALORES[3,6,9,2,4,1]
let datos: [Int] = [3,6,9,2,4,1]

//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for counter in datos {
    var sum = 0
    sum += counter
    print(sum)
}


// C) Encontrar los valores menores a 5
var menorNumeros = [Int]()
var menorN = 5

for numero in datos {
    if numero < menorN{
        menorNumeros.append(numero)
    }
}
print("Los numeros menores son:\(menorNumeros)")

