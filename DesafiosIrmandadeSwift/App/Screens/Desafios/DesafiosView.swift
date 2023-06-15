//
//  DesafiosView.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 13/06/23.
//

import SwiftUI

struct DesafiosView: View {
    @StateObject var desafiosViewModel = DesafiosViewModel()
    
    var body: some View {
        VStack{
            List{
                ForEach(Cidades.allCases, id: \.self) { cidade in
                    Section(cidade.rawValue){
                        ForEach(desafiosViewModel.desafios, id: \.id) { desafio in
                            if(cidade == desafio.cidade){
                                NavigationLink(destination: desafio.view) {
                                    Text(desafio.nome)
                                }
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Desafios")
    }
}

struct DesafiosView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DesafiosView()
        }
    }
}
