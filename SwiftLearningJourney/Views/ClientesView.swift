import SwiftUI

struct ClientesView: View {
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
            id: 1,
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
    
    var clientesFiltrados:[Cliente] {
        if textoBusqueda.isEmpty {
            return clientes
        }else{
            return clientes.filter{ cliente in
                cliente.nombre.localizedCaseInsensitiveContains(textoBusqueda) ||
                cliente.apellidos.localizedCaseInsensitiveContains(textoBusqueda)
            }
        }
    }
    
    var body: some View {
        VStack {
            NavigationLink {
                ClienteFormView(clientes: $clientes)
            } label: {
                Text("➕ Agregar Cliente")
            }
            TextField("Buscar Cliente", text: $textoBusqueda)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            List {
                ForEach(clientesFiltrados) { cliente in
                    NavigationLink {
                        ClienteDetail(cliente: cliente, clientes: $clientes)
                    } label: {
                        VStack(alignment: .leading) {
                            Text("\(cliente.nombre) \(cliente.apellidos)")
                                .bold()
                            
                            Text(cliente.email)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ClientesView()
}
