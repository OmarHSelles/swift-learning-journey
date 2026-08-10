//
//  BonoCliente.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 6/8/26.
//

import Foundation

struct BonoCliente: Identifiable, Codable, Hashable {

    let id: Int

    var estado: EstadoBono
    
    var tarifa: Tarifa
    
    var fechaInicio: Date
    var fechaFin: Date
    
    var pagado: Bool
    
    var sesionesRestantes: Int?
    
    var precioPagado: Double
    
    var fechaPago: Date?
}

enum EstadoBono: String, Codable {
    case activo
    case finalizado
    case pausado
    case caducado
}
