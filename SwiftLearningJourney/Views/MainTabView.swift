//
//  MainTabView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 4/8/26.
//

import SwiftUI

struct MainTabView: View {

    var body: some View {

        TabView {

            HomeView()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }

            NuevoUsuarioView()
                .tabItem {
                    Label("Nuevo", systemImage: "person.badge.plus")
                }

            CursosView()
                .tabItem {
                    Label("Cursos", systemImage: "figure.climbing")
                }

            FuncionalView()
                .tabItem {
                    Label("Funcional", systemImage: "dumbbell")
                }

            TarifasView()
                .tabItem {
                    Label("Tarifas", systemImage: "eurosign.circle")
                }

            CajaView()
                .tabItem {
                    Label("Caja", systemImage: "creditcard")
                }

        }

    }
}

#Preview {
    MainTabView()
}
