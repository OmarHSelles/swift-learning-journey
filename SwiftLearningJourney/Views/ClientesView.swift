import SwiftUI

struct ClientesView: View {
    
    @State var clientes = [
        Cliente(id: 1, nombre: "Omar", apellidos: "Herrera Sellés", codigoPostal: "03690", dni: "48539942Y", telefono: "675752143", email: "omar@gmail.com"),
        Cliente(id: 2, nombre: "Ana", apellidos: "Ramos Quiros", codigoPostal: "03690", dni: "48539942Y", telefono: "659478234", email: "ana@gmail.com")
    ]
    
    var body: some View {
        VStack {
            Button(" ➕ Agregar Cliente") {
                clientes.append(Cliente.init(id: 3, nombre: "Nuevo", apellidos: "Cliente", codigoPostal: "03690", dni: "48539942Y", telefono: "659478234", email: "nuevocliente@gmail.com"))
            }
            
            List {
                ForEach(clientes, id: \.self) {cliente in
                    NavigationLink {
                        ClienteDetail(cliente: cliente)
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
