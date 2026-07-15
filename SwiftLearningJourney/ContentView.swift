import SwiftUI

struct ContentView: View {// voy a crear una pantalla
    var nombre = "Omar"
    let ciudad = "Alicante"
    let profesion = "Desarrollador iOS"
    var edad = 39
    let altura = 1.7
    let estudiante = true;
    let numero1: Int = 5
    let numero2: Int = 3
    let hayPlazas = true
    let plazas = 0;
    let profesor = false ;


    
    func saludar(nombre: String) {
        print(("Hola \(nombre)"))
    }
    func suma(numero1: Int, numero2: Int) -> Int{
        return numero1 + numero2
    }
    func multiplicar(numero1: Int, numero2: Int) -> Int{
        return numero1 * numero2
    }
    var body: some View {// a qui dentro se crea la pantalla
        VStack(spacing: 20) {// pila vertical
            
            if hayPlazas {
                Text("Hay plazas disponibles")
            }else{
                Text("No hay plazas disponibles")
            }
            
            if edad >= 18{
                Text("Eres mayor de edad")
            }else{
                Text("Eres menor de edad")
            }
            
            if plazas > 10{
                Text("Hay muchas plazas")
            }else if plazas > 0{
                Text("Quedan pocas plazas")
            }else {
                Text("No quedan plazas")
            }
            if estudiante||profesor{
                Text("Puede acceder al curso")
            }

            
            Text("¡Hola, \(nombre)! 👋")
            Text("Soy de \(ciudad)")
            Text("Quiero trabajar como \(profesion)")
            Text("Tengo \(edad) años")
            Text("\(numero1) + \(numero2) = \(suma(numero1: numero1, numero2: numero2))")
            Text("Mido \(altura) metros")
            Text("¿Soy estudiante? \(estudiante.description)")
               

            Text("Mi viaje para convertirme en desarrollador iOS comienza hoy.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button("Comenzar") {
                saludar(nombre: "Ana")
                saludar(nombre: "Pedro")

                
                for number in 1...5 {
                        print("Paso \(number)")
               
                }
                
                print("Fin de la funcion")
                
            }
            .buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
