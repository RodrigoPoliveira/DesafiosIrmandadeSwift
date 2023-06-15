//
//  ExperimentosView.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 13/06/23.
//

import SwiftUI

struct ExperimentosView: View {
    @StateObject var experimentosViewModel = ExperimentosViewModel()
    
    var body: some View {
        VStack{
            List{
                ForEach(experimentosViewModel.experimentos, id: \.nome){ experimento in
                    NavigationLink(destination: experimento.view) {
                        Text(experimento.nome)
                    }
                }
            }
        }
        .navigationTitle("Experimentos")
    }
}

struct ExperimentosView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ExperimentosView()
        }
    }
}
