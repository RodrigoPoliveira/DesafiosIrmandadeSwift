//
//  ContentView.swift
//  DesafioTelaDePerfil
//
//  Created by Rodrigo Oliveira on 28/02/23.
//

import SwiftUI

struct DesafioTelaDePerfil: View {
    var body: some View {
        VStack(alignment: .listRowSeparatorLeading) {
            ZStack {
                Image("Wallpaper")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .ignoresSafeArea()
                
                Image("Happy_Smile2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 140, height: 140)
                    .clipShape(Circle())
                    .shadow(radius: 8)
                    .padding(Edge.Set.top, 100)
            }
            
            Text("Assistidos")
                .bold()
            
            HStack {
                MovieClapCell()
                MovieClapCell()
                MovieClapCell()
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 20, trailing: 10))
            
            Text("Na Fila")
                .bold()
            
            HStack {
                MovieClapCell()
                MovieClapCell()
                MovieClapCell()
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .background(.black)
        .foregroundColor(.white)
        .ignoresSafeArea()
    }
}

struct MovieClapCell: View {
    var body: some View {
        Image("Movie_Clap_Cell")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .frame(width: .infinity, height: .infinity)
    }
}
        
struct DesafioTelaDePerfil_Previews: PreviewProvider {
    static var previews: some View {
        DesafioTelaDePerfil()
    }
}

