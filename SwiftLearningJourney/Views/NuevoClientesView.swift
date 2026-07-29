//
//  NuevosClientesView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 29/7/26.
//

import SwiftUI

struct NuevoClientesView: View {
    @State  private var nombre = ""
    @State  private var apellido = ""
    @State  private var codigoPosta = ""
    @State  private var telefono = ""
    @State  private var dni = ""
    @State  private var email = ""


    var body: some View {
        Form{
            Text("Nombre: \(nombre)")
            TextField("Nombre", text: $nombre)
            
            Text("Apellido: \(apellido)")
            TextField("Apellido", text: $apellido)
            
            Text("Codigo Postal: \(codigoPosta)")
            TextField("Codigo Postal", text: $codigoPosta)
            
            Text("Correo: \(email)")
            TextField("Correo", text: $email)
            
            Text("Telefono: \(telefono)")
            TextField("Telefono", text: $telefono)
            
            Text("DNI: \(dni )")
            TextField("DNI", text: $dni)
                

        }
    }
}
#Preview {
    NuevoClientesView()
}
