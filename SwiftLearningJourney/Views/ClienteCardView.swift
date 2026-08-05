//
//  clienteCard.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 5/8/26.
//
import SwiftUI

struct ClienteCardView: View {

    let cliente: Cliente

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {

            HStack {
                Text("Información del usuario")
                    .font(.headline)

                Spacer()

                Button("Editar") {

                }
            }
            
            Divider()
            .padding(.horizontal)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal)
            
            HStack(alignment: .top, spacing: 16) {

                ZStack{
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 70, height: 70)
                    
                    Text(cliente.iniciales)
                        .font(Font.system(size: 40, weight: .bold, design: .default))
                        .bold()
                    
                }
                VStack(alignment: .leading, spacing: 8) {

                    Text(cliente.nombreCompleto)
                        .font(.title3)
                        .bold()

                    Text("Tipo de bono")
                    Text("Fecha de caducidad")
                    Text("Entradas restantes")
                }

                Spacer()
            }
            
            Divider()
                .padding(.horizontal)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            HStack {
                Spacer()
                
                Button("Añadir entrada") {
                    
                }
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.35), lineWidth: 1)
        )
        .shadow(radius: 3)
        .padding(.horizontal)
    }
    

}

#Preview {
    ClienteCardView(
        cliente: Cliente(
            id: 1,
            nombre: "Omar",
            apellidos: "Herrera Sellés",
            codigoPostal: "03690",
            dni: "48539942Y",
            telefono: "675752143",
            email: "omar@gmail.com",
            direccion: "",
            ciudad: "Alicante",
            provincia: "Alicante",
            telefonoFijo: ""
        )
    )
}
