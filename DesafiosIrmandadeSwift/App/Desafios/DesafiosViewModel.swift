//
//  DesafiosViewModel.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 13/06/23.
//

import SwiftUI

class DesafiosViewModel: ObservableObject {
    @Published var desafios: [DesafioModel] = []
    
    init() {
        self.desafios = getDesafios()
    }
    
    private func getDesafios() -> [DesafioModel] {
        return [
            DesafioModel(cidade: .taguatinga, nome: "Desafio Listagem", view: AnyView(DesafioListagem()), descricao: "Descrição Desafio Listagem"),
            DesafioModel(cidade: .nova_york, nome: "Desafio Informador Climatico", view: AnyView(DesafioInformadorClimatico()), descricao: "Descrição Desafio Informador Climatico"),
            DesafioModel(cidade: .nova_york, nome: "Desafio Selo Irmandade", view: AnyView(DesafioSeloIrmandade()), descricao: "Descrição Desafio Selo Irmandade"),
            DesafioModel(cidade: .paris, nome: "Desafio Tela de Perfil", view: AnyView(DesafioTelaDePerfil()), descricao: "Descrição Desafio Tela de Login"),
            DesafioModel(cidade: .sao_francisco, nome: "Desafio dos Estados", view: AnyView(DesafioDosEstados()), descricao: "Descrição Desafio dos Estados"),
            DesafioModel(cidade: .sao_francisco, nome: "Desafio Harry Potter", view: AnyView(DesafioHarryPotter()), descricao: "Descrição Desafio Harry Potter"),
            DesafioModel(cidade: .londres, nome: "Desafio Login", view: AnyView(DesafioLogin()), descricao: "Descrição Desafio Login"),
            DesafioModel(cidade: .berlim, nome: "Desafio RGB", view: AnyView(DesafioRGB()), descricao: "Descrição Desafio RGB")
        ]
    }
}
