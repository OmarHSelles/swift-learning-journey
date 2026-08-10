//
//  TarifasView.swift
//  SwiftLearningJourney
//
//  Created by OMAR on 4/8/26.
//
import SwiftUI

struct TarifasView: View {

    @EnvironmentObject var repository: TarifasRepository

    @State private var mostrarEliminar = false
    @State private var tarifaAEliminar: Tarifa?

    var body: some View {

        NavigationStack {

            List {

                ForEach(repository.tarifas) { tarifa in

                    NavigationLink {

                        TarifaDetalleView(
                            tarifa: tarifa
                        )

                    } label: {

                        HStack {

                            Image(systemName: "ticket")

                            VStack(alignment: .leading) {

                                Text(tarifa.nombre)
                                    .font(.headline)

                                Text("\(tarifa.precio, specifier: "%.2f") €")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)

                            }

                        }

                    }
                    .swipeActions {

                        Button(role: .destructive) {

                            tarifaAEliminar = tarifa
                            mostrarEliminar = true

                        } label: {

                            Label("Eliminar", systemImage: "trash")

                        }

                    }

                }

            }
            .navigationTitle("Tarifas")

            .toolbar {

                ToolbarItem(placement: .topBarTrailing) {

                    NavigationLink {

                        TarifaDetalleView(
                            tarifa: Tarifa.nueva()
                        )

                    } label: {

                        Image(systemName: "plus")

                    }

                }

            }

            .alert(
                "Eliminar tarifa",
                isPresented: $mostrarEliminar,
                presenting: tarifaAEliminar
            ) { tarifa in

                Button("Cancelar", role: .cancel) { }

                Button("Eliminar", role: .destructive) {

                    repository.eliminar(tarifa)

                }

            } message: { tarifa in

                Text("¿Seguro que quieres eliminar la tarifa \"\(tarifa.nombre)\"?\n\nEsta acción no se puede deshacer.")

            }

        }

    }

}

#Preview {

    TarifasView()
        .environmentObject(TarifasRepository())

}
