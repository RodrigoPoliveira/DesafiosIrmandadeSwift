//
//  ContentView.swift
//  DesafioDosEstados
//
//  Created by Rodrigo Oliveira on 08/03/23.
//
// Desafio para realizar o estudo dos eventos onAppear e onDisappear

import SwiftUI

struct DesafioDosEstados: View {
    let nomeDaSecao = ("Estado", "Brasil")
    let isNomeEstadoSigla = true
    let estadosDoBrasil = [
        "RJ" : "Rio de Janeiro",
        "DF" : "Distrito Federal",
        "SP" : "São Paulo",
        "ES" : "Espirito Santo",
        "SC" : "Santa Catarina"
    ]
    
    var body: some View {
        Group {
            List {
                Section("\(nomeDaSecao.0) do \(nomeDaSecao.1)") {
                    ForEach(estadosDoBrasil.keys.sorted(), id: \.self) { siglaEstado in
                        Text(estadosDoBrasil[siglaEstado]!)
                            .onDisappear {
                                print("\(isNomeEstadoSigla ? siglaEstado : estadosDoBrasil[siglaEstado]!) desapareceu da tela")
                            }
                    }
                }
            }
            .onAppear {
                PrintEstados(estados: estadosDoBrasil)
            }
        }
    }
}

struct DesafioDosEstados_Previews: PreviewProvider {
    static var previews: some View {
        DesafioDosEstados()
    }
}

func PrintEstados(estados:Dictionary<String, String>){
    print("--------- Estados ---------")
    for estado in estados {
        print("\(estado.key) = \(estado.value)")
    }
    print("---------------------------")
}

