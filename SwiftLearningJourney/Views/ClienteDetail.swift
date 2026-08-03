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
        Form {
            
            Section("Información personal") {
                Text("Nombre")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                TextField("Nombre", text: .constant(cliente.nombre))

                Text("Apellidos")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                TextField("Apellidos", text: .constant(cliente.apellidos))
                
                Text("DNI")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                TextField("DNI", text: .constant(cliente.dni))

                Text("Correo electrónico")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                TextField("Correo", text: .constant(cliente.email))

                Text("Teléfono")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                TextField("Teléfono", text: .constant(cliente.telefono))

                Text("Código Postal")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                TextField("Código Postal", text: .constant(cliente.codigoPostal))
                
                Text("Ciudad")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                TextField("Ciudad", text: .constant(cliente.ciudad))
                
                Text("Provincia")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                TextField("Provincia", text: .constant(cliente.provincia))
                
                Text("Dirección")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                TextField("Dirección", text: .constant(cliente.direccion))
                
                
                Text("Telefono Fijo")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                TextField("Telefono Fijo", text: .constant(cliente.telefonoFijo))

                
            }
            
            Section("Informacion adicional"){
                
                
            }
          
        }
        .padding(10)
    }
}
 

#Preview {
    ClienteDetail(
        cliente: Cliente(id: 1, nombre: "Omar", apellidos: "Herrera Sellés", codigoPostal: "03690", dni: "48539942Y", telefono: "675752143", email: "omar@gmail.com", direccion: "Calle ocas 5", ciudad: "Alicante", provincia: "Sanvicente del raspeig", telefonoFijo: "965253733"),
        clientes: .constant([])
    )
    }



