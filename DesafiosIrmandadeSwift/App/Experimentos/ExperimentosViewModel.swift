//
//  ExperimentosViewModel.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 14/06/23.
//

import SwiftUI

class ExperimentosViewModel: ObservableObject {
    @Published var experimentos:[ExperimentoModel] = []
    
    init() {
        self.experimentos = getExperimentos()
    }
    
    private func getExperimentos() -> [ExperimentoModel] {
        return [
            ExperimentoModel(nome: "Geometry Reader", view: AnyView(ExperimentoGeometryReader()), descricao: "Descrição Experimento Geometry Reader"),
            ExperimentoModel(nome: "Animation", view: AnyView(ExperimentoAnimation()), descricao: "Descrição Experimento Animation")
        ]
    }
}
