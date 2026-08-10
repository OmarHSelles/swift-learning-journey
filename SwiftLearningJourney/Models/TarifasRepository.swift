//
//  TarifasRepository.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 6/8/26.
//

import Foundation
import Combine

final class TarifasRepository: ObservableObject {

    @Published var tarifas: [Tarifa] = [
        
        Tarifa(
            id: 1,
            nombre: "Pase de un día",
            precio: 7,
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
            precio: 38,
            tipo: .mensual,
            numeroDias: nil,
            numeroMeses: 1,
            numeroSesiones: nil,
            
            
        )

    ]
    
  func siguienteId() -> Int {

        guard let ultimoId = tarifas.map(\.id).max() else {
            return 1
        }

        return ultimoId + 1

    }
    
    
     func añadir(_ tarifa: Tarifa) {

        var nuevaTarifa = tarifa

        nuevaTarifa.id = siguienteId()

        tarifas.append(nuevaTarifa)

    }

    func actualizar(_ tarifa: Tarifa){
        
        if let indice = tarifas.firstIndex(where: { $0.id == tarifa.id }) {

              tarifas[indice] = tarifa

          }
        
    }

     func eliminar(_ tarifa: Tarifa){
        
        tarifas.removeAll { $0.id == tarifa.id }
        
    }
}
