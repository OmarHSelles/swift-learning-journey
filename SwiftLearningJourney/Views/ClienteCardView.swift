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

            Text("Información del usuario")
                .font(.headline)

            HStack(alignment: .top, spacing: 16) {

                Text("👤")
                    .font(.system(size: 55))

                VStack(alignment: .leading, spacing: 8) {

                    Text("\(cliente.nombre) \(cliente.apellidos)")
                        .font(.title3)
                        .bold()

                    Text("Tipo de bono")
                    Text("Fecha de caducidad")
                    Text("Entradas restantes")
                }

                Spacer()
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
