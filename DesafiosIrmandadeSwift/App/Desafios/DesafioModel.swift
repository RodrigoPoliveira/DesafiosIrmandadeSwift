//
//  DesafioModel.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 13/06/23.
//

import SwiftUI

struct DesafioModel {
    let cidade: Cidades
    let nome: String
    let view: AnyView
    let descricao: String
    let id: String
    
    init(cidade: Cidades, nome: String, view: AnyView, descricao: String) {
        self.cidade = cidade
        self.nome = nome
        self.view = view
        self.descricao = descricao
        self.id = cidade.rawValue + nome + descricao
    }
}
