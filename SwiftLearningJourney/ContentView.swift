import SwiftUI

struct ContentView: View {// voy a crear una pantalla
    var body: some View {// a qui dentro se crea la pantalla
        VStack(spacing: 20) {// pila vertical

            Text("¡Hola Omar! 👋")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Mi viaje para convertirme en desarrollador iOS comienza hoy.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button("Comenzar") {
                print("Hola OMAR")
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
