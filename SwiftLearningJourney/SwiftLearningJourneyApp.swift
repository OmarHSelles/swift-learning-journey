//
//  SwiftLearningJourneyApp.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 8/7/26.
//

import SwiftUI

@main
struct SwiftLearningJourneyApp: App {
    
    @StateObject private var tarifasRepository = TarifasRepository()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(tarifasRepository)
        }
    }
}
