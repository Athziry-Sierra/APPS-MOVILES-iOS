import UIKit

/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
var datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for counter in datos{
    var sum = 0
    sum += counter
    print(sum)
}

//: C) Encontrar los valores menores a 5
var menorNum = [Int]()
var menorN = 5

for numero in datos {
    if numero < menorN{
        menorNum.append(numero)
    }
}
print("Los numeros menores son:\(menorNum)")



//FUNCIONES
//A)Crea la funcion suma que reciba dos parametros de tipo entero regresando la suma de ambos numeros

func suma (leght:Int ,width: Int) -> Int{
    let S = leght + width
    return S
}

let Resultado = suma(leght: 10, width: 5)
print(Resultado)
//: B) Crear la función "potencia" que reciba dos parámetros de tipo entero, el primer parámetro para el numero base y el segundo la potencia a elevar, regresando el resultado de la potencia.
func potencia (a: Int , b:Int ) -> Double{
    let op = pow(Double(a), Double(b))
    return Double(op)
}
let R = potencia(a: 2, b: 2)
print(R)

/*:
### Enumeraciones
A) Crea la enumaración "meses" para definir tipos de datos basados en los meses del año.
*/
enum Meses: Int{
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre
    
}
var typeCounter: Meses
typeCounter = .Febrero

//: B) Crear la función "numeroMes" que reciba el tipo de dato "meses" y regrese el numero del mes correspondiente
func numeroMes( type:Meses) -> Int{
    
    switch type {
    case .Enero:
        return 1
    case .Febrero:
        return 2
    case .Marzo:
        return 3
    case .Abril:
        return 4
    case .Mayo:
        return 5
    case .Junio:
        return 6
    case .Julio:
        return 7
    case .Agosto:
        return 8
    case .Septiembre:
        return 9
    case .Octubre:
        return 10
    case .Noviembre:
        return 11
    case .Diciembre:
        return 12
        }
    
    }

numeroMes(type:Meses.Febrero)
print("El numero del mes es:\(numeroMes(type: Meses.Febrero))")



//: C) Para regresar el numero de mes correspondiente utilizar la "switch"




