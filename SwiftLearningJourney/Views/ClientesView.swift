//
//  ClientesView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 17/7/26.
//

import SwiftUI

struct ClientesView: View {
    let clientes = [
        Cliente(id: 1, nombre: "Omar", apellidos: "Herrera selles", codigoPostal: "03690", dni: "48539942Y", telefono:"675752143", email: "omar@gmail.com"),
        Cliente(id: 2, nombre: "Ana", apellidos: "Ramos Quiros", codigoPostal: "03690", dni: "48539942Y", telefono: "659478234", email: "ana@gmail.com")
    ]
    var body: some View {
     
        VStack(spacing: 20){
            
            Text("Clientes")
                .font(.largeTitle)
                .bold()
            
            List{
                ForEach(clientes, id: \.self){ cliente in
                    VStack(alignment: .leading){
                        Text(cliente.nombre)
                            .bold()
                        Text(cliente.email)
                            .font(Font.subheadline)
                            .foregroundStyle(.secondary)
                        
                    }
                    
                }
            }
                
        }
        
        .navigationTitle("Clientes")
    }
}

#Preview {
    ClientesView()
}
