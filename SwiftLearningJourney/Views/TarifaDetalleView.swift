//
//  TarifaDetalleView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 10/8/26.
//

import SwiftUI

struct TarifaDetalleView: View {
    
    
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var repository: TarifasRepository
    
    @State private var tarifa: Tarifa
    @State private var mostrarError = false
    @State private var mensajeError = ""
    
    
    
    init(tarifa: Tarifa) {
        _tarifa = State(initialValue: tarifa)
    }
    
    var body: some View {
        
        Form {
            
            Section("Información") {
                
                HStack {
                    
                    Text("Nombre:")
                        .frame(width: 100, alignment: .leading)
                    
                    TextField(
                        "Nombre",
                        text: $tarifa.nombre
                    )
                    
                }
                
                HStack {
                    
                    Text("Precio:")
                        .frame(width: 100, alignment: .leading)
                    
                    TextField(
                        "",
                        value: $tarifa.precio,
                        format: .number
                    )
                    .multilineTextAlignment(.trailing)
                    
                    Text("€")
                        .foregroundStyle(.secondary)
                    
                }
                
                Picker("Tipo", selection: $tarifa.tipo) {
                    
                    ForEach(TipoTarifa.allCases, id: \.self) { tipo in
                        
                        Text(tipo.nombreMostrar)
                            .tag(tipo)
                        
                    }
                    
                }
                
            }
            
            Section("Configuración") {

                if tarifa.tipo == .paseDia {

                    HStack {

                        Text("Duración (días):")
                            .frame(width: 140, alignment: .leading)

                        TextField(
                            "",
                            value: Binding(
                                get: { tarifa.numeroDias ?? 0 },
                                set: { tarifa.numeroDias = $0 }
                            ),
                            format: .number
                        )
                        .multilineTextAlignment(.trailing)

                    }

                }

                if tarifa.tipo == .bonoSesiones {

                    HStack {

                        Text("Sesiones:")
                            .frame(width: 140, alignment: .leading)

                        TextField(
                            "",
                            value: Binding(
                                get: { tarifa.numeroSesiones ?? 0 },
                                set: { tarifa.numeroSesiones = $0 }
                            ),
                            format: .number
                        )
                        .multilineTextAlignment(.trailing)

                    }

                    HStack {

                        Text("Caducidad (meses):")
                            .frame(width: 140, alignment: .leading)

                        TextField(
                            "",
                            value: Binding(
                                get: { tarifa.numeroMeses ?? 0 },
                                set: { tarifa.numeroMeses = $0 }
                            ),
                            format: .number
                        )
                        .multilineTextAlignment(.trailing)

                    }

                }

                if tarifa.tipo == .mensual {

                    HStack {

                        Text("Duración (meses):")
                            .frame(width: 140, alignment: .leading)

                        TextField(
                            "",
                            value: Binding(
                                get: { tarifa.numeroMeses ?? 0 },
                                set: { tarifa.numeroMeses = $0 }
                            ),
                            format: .number
                        )
                        .multilineTextAlignment(.trailing)

                    }

                }

                if tarifa.tipo == .curso {

                    HStack {

                        Text("Clases/semana:")
                            .frame(width: 140, alignment: .leading)

                        TextField(
                            "",
                            value: Binding(
                                get: { tarifa.numeroDias ?? 0 },
                                set: { tarifa.numeroDias = $0 }
                            ),
                            format: .number
                        )
                        .multilineTextAlignment(.trailing)

                    }

                    HStack {

                        Text("Duración (meses):")
                            .frame(width: 140, alignment: .leading)

                        TextField(
                            "",
                            value: Binding(
                                get: { tarifa.numeroMeses ?? 0 },
                                set: { tarifa.numeroMeses = $0 }
                            ),
                            format: .number
                        )
                        .multilineTextAlignment(.trailing)

                    }

                }

            }
            Section {

                HStack {


                    Button("Guardar") {

                        if tarifa.nombre.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {

                            mensajeError = "Debes introducir un nombre para la tarifa."
                            mostrarError = true
                            return

                        }

                        if tarifa.precio <= 0 {

                            mensajeError = "El precio debe ser mayor que 0 €."
                            mostrarError = true
                            return

                        }

                        if tarifa.id == 0 {

                            repository.añadir(tarifa)

                        } else {

                            repository.actualizar(tarifa)

                        }

                        dismiss()

                    }
                    .fontWeight(.semibold)

                }

            }

            }
            .navigationTitle(tarifa.id == 0 ? "Nueva tarifa" : "Editar tarifa")
            .alert("No se puede guardar", isPresented: $mostrarError) {

                Button("Aceptar", role: .cancel) { }

            } message: {

                Text(mensajeError)

            }
            
        }
        
    }


#Preview {

    let repository = TarifasRepository()
    TarifaDetalleView(
        tarifa: repository.tarifas[0]
    )
    .environmentObject(repository)
}
