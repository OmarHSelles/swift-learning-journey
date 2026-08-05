import SwiftUI

struct HomeView: View {

    @State private var textoBusqueda = ""

    @State var clientes = [
        Cliente(
            id: 1,
            nombre: "Omar",
            apellidos: "Herrera Sellés",
            codigoPostal: "03690",
            dni: "48539942Y",
            telefono: "675752143",
            email: "omar@gmail.com",
            direccion: "",
            ciudad: "",
            provincia: "",
            telefonoFijo: ""
        ),
        Cliente(
            id: 2,
            nombre: "Ana",
            apellidos: "Ramos Quiros",
            codigoPostal: "03690",
            dni: "48539942Y",
            telefono: "695947823",
            email: "ana@gmail.com",
            direccion: "",
            ciudad: "Alicante",
            provincia: "",
            telefonoFijo: ""
        )
    ]

    @State private var clienteSeleccionado: Cliente?

    var clientesFiltrados: [Cliente] {
        if textoBusqueda.isEmpty {
            return clientes
        } else {
            return clientes.filter { cliente in
                cliente.nombre.localizedCaseInsensitiveContains(textoBusqueda) ||
                cliente.apellidos.localizedCaseInsensitiveContains(textoBusqueda)
            }
        }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {

                Text("🧗 Gravedad Zero")
                    .font(.largeTitle)
                    .bold()

                TextField("Buscar usuario", text: $textoBusqueda)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                List(clientesFiltrados) { cliente in
                    Button {
                        clienteSeleccionado = cliente
                    } label: {
                        Text("\(cliente.nombre) \(cliente.apellidos)")
                    }
                }
                .frame(height: 250)

                if let cliente = clienteSeleccionado {
                    ClienteCardView(cliente: cliente)
                }
                }

                Spacer()
            }
            .navigationTitle("Clientes")
        }
    }


#Preview {
    HomeView()
}
