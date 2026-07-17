//
//  ClientesView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 17/7/26.
//

import SwiftUI

struct ClientesView: View {
    var body: some View {
     
        VStack(spacing: 20){
            
            Text("Clientes")
                .font(.largeTitle)
                .bold()
            
            Text("Aqui aparecen todos los clientes")
                
        }
        
        .navigationBarTitle("Clientes")
    }
}

#Preview {
    ClientesView()
}
