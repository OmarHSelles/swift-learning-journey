//
//  ClienteDetail.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 28/7/26.
//

import SwiftUI

struct ClienteDetail: View {
    
    let cliente: Cliente
    @Binding var clientes: [Cliente]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("👤 \(cliente.nombre)")
            Text("Apellidos: \(cliente.apellidos)")
            Text("✉️ \(cliente.email)")
            Text("📞 \(cliente.telefono)")
            Text("Código Postal: \(cliente.codigoPostal)")
            Text("🪪 \(cliente.dni)")
            
            NavigationLink {
                            ClienteFormView(clientes: $clientes, clienteAEditar: cliente)
                        } label: {
                            Text("✏️ Editar")
                        }
            .buttonStyle(.borderedProminent)
        }
        .padding(10)
    }
}
 

#Preview {
    ClienteDetail(
        cliente: Cliente(id: 1, nombre: "Omar", apellidos: "Herrera Sellés", codigoPostal: "03690", dni: "48539942Y", telefono: "675752143", email: "omar@gmail.com"),
        clientes: .constant([])
    )
    }



