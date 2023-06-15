//
//  ContentView.swift
//  DesafioSeloIrmandade
//
//  Created by Rodrigo Oliveira on 23/02/23.
//
// Desafio para replicar uma tela, fazendo uso de novos modificadores e criando uma view apartada.

import SwiftUI

struct DesafioSeloIrmandade: View {
    var body: some View {
        // Criando uma View do tipo Text
        Text("Irmandade Swift")
            .font(.title) // Definindo o estilo da fonte
            .foregroundColor(.white) // Definindo a cor da fonte
            .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30)) // Definando o espaçamento ao redor da fonte
            .background(.orange) // Definindo a cor de fundo da View gerada após o modificador padding
            .cornerRadius(20) // Arredondando a view
            .background(Coracao()) // Definindo o fundo da View (que é a View Coracao)
            .id("selo irmandade") // Definindo o identificador da View
    }
}

// Criando uma View que irá compor o selo da irmandade
struct Coracao: View {
    var body: some View {
        // Criando um agrupador de elementos visuais (Views) do tipo ZStak
        ZStack {
            // Criando uma View do tipo Circle
            Circle()
                .fill(.blue) // Preenchendo o Circle de azul
                .frame(width: 200, height: 170) // Definindo o tamanho do Circle
            
            // Criando uma view do tipo Image
            Image(systemName: "heart.fill")
                .font(.system(size: 100, weight: .ultraLight)) // Definindo o tamanho da imagem do SFSimbols
                .foregroundColor(.red)
            
        }
        .id("coracao") // Definindo o identificador da View
        //.background(.green)
    }
}

struct DesafioSeloIrmandade_Previews: PreviewProvider {
    static var previews: some View {
        DesafioSeloIrmandade()
    }
}

