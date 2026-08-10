//
//  TarifasRepository.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 6/8/26.
//

import Foundation

struct TarifasRepository {

    static let tarifas: [Tarifa] = [

        Tarifa(
            id: 1,
            nombre: "Pase de un día",
            precio: 10,
            tipo: .paseDia,
            numeroDias: 1,
            numeroMeses: nil,
            numeroSesiones: nil,
        ),

        Tarifa(
            id: 2,
            nombre: "Bono 10 sesiones",
            precio: 55,
            tipo: .bonoSesiones,
            numeroDias: nil,
            numeroMeses: nil,
            numeroSesiones: 10,
          
        ),

        Tarifa(
            id: 3,
            nombre: "Bono mensual",
            precio: 45,
            tipo: .mensual,
            numeroDias: nil,
            numeroMeses: 1,
            numeroSesiones: nil,
            
            
        )

    ]

}
