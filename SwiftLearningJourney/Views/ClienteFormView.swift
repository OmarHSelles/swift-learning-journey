//
//  NuevosClientesView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 29/7/26.
//

import SwiftUI

struct ClienteFormView: View {
    
    @Binding var clientes: [Cliente]
    var clienteAEditar: Cliente? = nil
    @Environment(\.dismiss) private var dismiss

    
    @State  private var nombre = ""
    @State  private var apellido = ""
    @State  private var codigoPostal = ""
    @State  private var telefono = ""
    @State  private var dni = ""
    @State  private var email = ""


    var body: some View {
        Form{
            Text("Nombre:")
            TextField("Nombre", text: $nombre)
            
            Text("Apellido: \(apellido)")
            TextField("Apellido", text: $apellido)
            
            Text("Codigo Postal: \(codigoPostal)")
            TextField("Codigo Postal", text: $codigoPostal)
            
            Text("Correo: \(email)")
            TextField("Correo", text: $email)
            
            Text("Telefono: \(telefono)")
            TextField("Telefono", text: $telefono)
            
            Text("DNI: \(dni )")
            TextField("DNI", text: $dni)
                
            Button("Guardar"){
                if nombre.isEmpty || apellido.isEmpty || telefono.isEmpty {
                    print("Faltan datos obligatorios")
                } else if let clienteAEditar = clienteAEditar {
                    // Modo EDITAR
                    if let index = clientes.firstIndex(where: { $0.id == clienteAEditar.id }) {
                        clientes[index] = Cliente(id: clienteAEditar.id, nombre: nombre, apellidos: apellido, codigoPostal: codigoPostal, dni: dni, telefono: telefono, email: email)
                    }
                    dismiss()
                } else {
                    // Modo CREAR
                    let nuevoCliente = Cliente(id: clientes.count + 1, nombre: nombre, apellidos: apellido, codigoPostal: codigoPostal, dni: dni, telefono: telefono, email: email)
                    clientes.append(nuevoCliente)
                    dismiss()
                }
            }
            .onAppear {
                if let cliente = clienteAEditar {
                    nombre = cliente.nombre
                    apellido = cliente.apellidos
                    codigoPostal = cliente.codigoPostal
                    telefono = cliente.telefono
                    dni = cliente.dni
                    email = cliente.email
                }
            }

        }
    }
}
#Preview {
    ClienteFormView(clientes: .constant([]))
}
