//
//  NuevoUsuarioView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 4/8/26.
//

import SwiftUI

struct NuevoUsuarioView: View {
    
    @State private var clientes: [Cliente] = []
    
        var body: some View {
            ClienteFormView(clientes: $clientes)
                .navigationTitle(Text("Nuevo Usuario"))
        }
    }
    
    #Preview {
        NuevoUsuarioView()
    }

