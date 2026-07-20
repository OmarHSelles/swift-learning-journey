//
//  Cliente.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 20/7/26.
//

import Foundation
struct Cliente: Codable, Hashable {
    let id: Int
    let nombre: String
    let apellidos: String
    let codigoPostal: String
    let dni: String
    let telefono: String
    let email: String
    

}
