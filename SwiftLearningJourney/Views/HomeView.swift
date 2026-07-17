//
//  HomeViews.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 17/7/26.
//

import SwiftUI
#Preview {
    HomeView()
}

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                
                Text("🧗 Gravedad Zero")
                    .font(.largeTitle)
                    .bold()
                
                NavigationLink {
                           ClientesView()
                       } label: {
                           Text("👥 Clientes")
                       }
                
                Button("📅 Reservas") {
                    
                }
                
                Button("🎟 Bonos") {
                    
                }
                
                Button("⚙️ Configuración") {
                    
                }
                
            }
        }
    }
    
    
}
