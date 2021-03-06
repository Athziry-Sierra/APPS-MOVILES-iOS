import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator **
func ** (a:Int , b:Int)-> Int {
    let op = Int(pow(Double(a),Double(b)))
    return op
}
2**2
print("La potecia es:\(2**2)")

//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
let array = [2,3,4,5]
prefix operator |>
prefix func |> (col:[Int])->[Int]{
    var c = [Int](col)
    c.sort()
    return c
}
|>array
print("El array esta ordenado:\(|>array)")

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
let cantidades = [2,3,4,5]

class modificar{
    var cantidades:[Int]
    init(valores:[Int]){
        self.cantidades = valores
    }
    
    subscript(index:Int)->Int{
        get{
            return cantidades[index]
        }
        set(newValue){
            if(cantidades[index] % 2 == 0 ){
                cantidades[index] = newValue
                
            }else{
                print("No fue multiplicado x2")
            }
        }
    }
}

let v = modificar(valores: cantidades)
v[2]
v[0]=3
v[1]=3
v.cantidades
print(v.cantidades)

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
let poseEn = [CGPoint(x:7,y:2), CGPoint(x:5,y:0), CGPoint(x:2,y:3)]
struct posicion{
    var p:[CGPoint]
    
    init(coordenadas:[CGPoint]) {
        self.p = coordenadas
    }
    
    subscript(index:Int)->CGPoint{
        get{
            return p[index]
        }
        set(newCoordenada){
            p[index] = newCoordenada
        }
    }
}

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let dictError = ["A":1,"B":2,"C":3]
func ExisteValor(idx:String)
{
    guard let existe = dictError[idx] else{
        print("No existe")
        return
    }
    print("Existe \(existe)")
}
ExisteValor(idx: "A")
dictError["D"]







