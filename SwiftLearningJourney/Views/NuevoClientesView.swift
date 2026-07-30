//
//  NuevosClientesView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 29/7/26.
//

import SwiftUI

struct NuevoClientesView: View {
    
    @Binding var clientes: [Cliente]
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
                if nombre.isEmpty || apellido.isEmpty ||  telefono.isEmpty {
                    print("Faltan datos obligatorios")
                }else {
                    let nuevoCliente = Cliente(id: clientes.count + 1, nombre: nombre, apellidos: apellido, codigoPostal: codigoPostal, dni: dni, telefono: telefono, email: email)
                    clientes.append(nuevoCliente)
                    dismiss()
                    print("Cliente guardado")
                }
               
            }

        }
    }
}
#Preview {
    NuevoClientesView(clientes: .constant([]))
}
