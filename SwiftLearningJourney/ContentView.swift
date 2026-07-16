import SwiftUI

struct ContentView: View {// voy a crear una pantalla
    @State var nombre = "Omar"
    @State var ciudad = "Alicante"
    let profesion = "Desarrollador iOS"
    var edad = 39
    let altura = 1.7
    @State var estudiante = true;
    let numero1: Int = 5
    let numero2: Int = 3
    let hayPlazas = true
    let plazas = 0;
    let profesor = false ;
    let frutas = ["🍎manzanas","🍐Peras","🍌Platanos","🍊Naranjas","🍇Uvas"]
    let colores = ["Rojo", "Blanco", "Verde", "Azul", "Morado"]
    
    @State var alumnos = [
        Alumno(nombre : "Omar", edad: 39, ciudad: "Alicante", estudiante: true),
        Alumno(nombre : "Sofía", edad: 28, ciudad: "Barcelona", estudiante: true),
        Alumno(nombre : "Marta", edad: 22, ciudad: "Madrid", estudiante: false)
          ]
    
  
    
    let omar = Alumno(nombre: "Omar", edad: 39, ciudad: "Alicante", estudiante: true)
    
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
            

            Text("El primer alumno es \(alumnos[0].nombre)")
            
            ForEach(alumnos, id: \.self){alumno in
                VStack(alignment: .leading){
                    
                    Text("👨‍🎓\(alumno.nombre)")
                    Text("🎂Edad: \(alumno.edad)")
                    Text("📍\(alumno.ciudad)")
                    if alumno.estudiante{
                        Text("🎓 Es estudiante: si")
                    }else {
                        Text("🎓 Es estudiante: no")
                    }
                    
                }
            }
            
            /*ForEach(frutas, id: \.self){fruta in//"Para cada fruta del array de frutas..
                Text(fruta)
            }
            
            ForEach(colores, id: \.self){color in
                Text(color)
            }
            */
            Text("\(omar.nombre) tiene \(omar.edad) años")

            
            Text("¡Hola, \(nombre)! 👋")
            Button("Cambiar de nombre"){
                if nombre == "Ana"{
                   nombre = "Omar"
                }else {
                    nombre = "Ana"
                }
            }
            
            Text("Soy de \(ciudad)")
            Button("Cambiar de ciudad"){
                if ciudad == "Alicante"{
                    ciudad = "Madrid"
                }else {
                    ciudad = "Alicante"
                }
            }
            
            if estudiante {
            Text("🎓 ¿Soy estudiante? Sí")
             } else {
               Text("🎓 ¿Soy estudiante? No")
}
            Button("Cambiar estudiante"){
                if estudiante{
                    estudiante = false
                }else {
                    estudiante = true
                }
            }
            
            Text("Quiero trabajar como \(profesion)")
            Text("Tengo \(edad) años")
            Text("\(numero1) + \(numero2) = \(suma(numero1: numero1, numero2: numero2))")
            Text("Mido \(altura) metros")
            
               

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

