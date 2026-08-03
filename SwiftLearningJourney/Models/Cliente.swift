//
//  Cliente.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 20/7/26.
//

import Foundation
struct Cliente: Codable, Hashable, Identifiable{
    let id: Int
    var nombre: String
    var apellidos: String
    var codigoPostal: String
    var dni: String
    var telefono: String
    var email: String
    var direccion: String
    var ciudad: String
    var provincia: String
    var telefonoFijo: String
    

}
