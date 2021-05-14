struct Operador {
    var simbolo:String
    init(simbolo:String) {
        switch simbolo {
        case "+":
            self.simbolo = simbolo
            break
        case "-":
            self.simbolo = simbolo
            break
        case "*":
            self.simbolo = simbolo
            break
        case "/":
            self.simbolo = simbolo
            break
        default:
            self.simbolo = "N"
        }
    }
    
    func operar(num:String,num2:String){
        
        guard !num.isEmpty,
              !num.contains("."),
        let numero1 = Int(num) else { return print("El numero no es un entero") }
        
        guard !num2.isEmpty,
              !num2.contains("."),
        let numero2 = Int(num2) else { return print("El numero no es un entero") }
        
        switch self.simbolo {
        case "+":
            print("La suma es: \(numero1 + numero2)")
            break
        case "-":
            print("La resta es: \(numero1 - numero2)")
            break
        case "*":
            print("La multiplicación es: \(numero1 * numero2)")
            break
        case "/":
            if(numero2==0){
                print("Error no puedes dividir entre 0")
            }else{
                print("La div es: \(numero1 / numero2)")
            }
            break
        default:
            print("Error en el operador")
        }
    }
    
}

let suma = Operador(simbolo: "+")
suma.operar(num: "10", num2: "5")
let resta = Operador(simbolo: "-")
resta.operar(num: "10", num2: "5")
let multi = Operador(simbolo: "*")
multi.operar(num: "10", num2: "5")
let div = Operador(simbolo: "/")
div.operar(num: "10", num2: "5")
