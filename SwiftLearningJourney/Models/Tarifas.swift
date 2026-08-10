//
//  Tarifas.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 6/8/26.
//


import Foundation

enum TipoTarifa: String, Codable, CaseIterable {
    case paseDia
    case bonoSesiones
    case mensual
    case curso
    case funcional
    
    var nombreMostrar: String {

        switch self {

        case .paseDia:
            return "Pase de un día"

        case .bonoSesiones:
            return "Bono de sesiones"

        case .mensual:
            return "Mensual"

        case .curso:
            return "Curso"
            
        case .funcional:
            return "Funcional"
            

        }

    }
}


enum UnidadDuracion: String, Codable, CaseIterable {
    case dias
    case meses
}

struct Tarifa: Identifiable, Hashable, Codable {

   var id: Int

    var nombre: String
    var precio: Double

    var tipo: TipoTarifa

    // Solo se usa uno de los dos
    var numeroDias: Int?
    var numeroMeses: Int?

    // Solo para bonos por sesiones
    var numeroSesiones: Int?

    func crearBono(id: Int, fechaInicio: Date) -> BonoCliente {

        let calendario = Calendar.current
        var fechaFin = fechaInicio

        if let dias = numeroDias {
            fechaFin = calendario.date(byAdding: .day,
                                       value: dias,
                                       to: fechaInicio)!
        }
        

        if let meses = numeroMeses {
            fechaFin = calendario.date(byAdding: .month,
                                       value: meses,
                                       to: fechaInicio)!
        }

        return BonoCliente(
            id: id,
            estado: .activo,
            tarifa: self,
            fechaInicio: fechaInicio,
            fechaFin: fechaFin,
            pagado: false,
            sesionesRestantes: numeroSesiones,
            precioPagado: precio
        )
    }
    
    static func nueva() -> Tarifa{
        
            Tarifa(
            id: 0,
            nombre: "",
            precio: 0.0,
            tipo: .paseDia,
            numeroDias: nil,
            numeroMeses: nil,
            numeroSesiones: nil
        )
        
       
        
    }

}

