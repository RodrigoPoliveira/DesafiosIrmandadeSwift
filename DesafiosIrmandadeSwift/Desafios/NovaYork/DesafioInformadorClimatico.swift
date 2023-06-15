//
//  ContentView.swift
//  DesafioInformadorClimatico
//
//  Created by Rodrigo Oliveira on 23/02/23.
//
// Desafio para replicar uma tela e realizar o estudo dos seguintes modificadores:
// - Padding
// - Id
// - Frame

import SwiftUI

struct DesafioInformadorClimatico: View {
    var body: some View {
        VStack {
            VStack {
                Text("Araraquara, SP")
                    .font(.system(size: 30, weight: .semibold))

                    .id("cidade")
                
                Text("36°")
                    .font(.system(size: 60, weight: .semibold))
                    .id("temperatura")
            }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
            
            Image(systemName: "cloud.sun.fill")
                .foregroundStyle(Color.gray, Color.yellow)
                .font(.system(size: 90))
                .shadow(radius: 10)
                .padding(EdgeInsets(top: 50, leading: 0, bottom: 130, trailing: 0))
                .id("imagem_tempo")
            
            HStack {
                VStack(spacing: 5) {
                    Text("Seg")
                        .font(.system(size: 15, weight: .bold))
                    
                    Image(systemName: "cloud.sun.rain.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    
                    Text("32°")
                        .font(.system(size: 20, weight: .bold))
                }
                .frame(width: 50)
                
                Rectangle()
                    .fill(.black.gradient.blendMode(.softLight))
                    .frame(width: 2, height: 85)
                    .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 3))
                
                VStack(spacing: 10) {
                    Text("Ter")
                        .font(.system(size: 15, weight: .bold))
                    
                    Image(systemName: "cloud.drizzle.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    
                    Text("30°")
                        .font(.system(size: 20, weight: .bold))
                }
                .frame(width: 50)
                
                Rectangle()
                    .fill(.black.gradient.blendMode(.softLight))
                    .frame(width: 2, height: 85)
                    .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 3))
                
                VStack(spacing: 10) {
                    Text("Qua")
                        .font(.system(size: 15, weight: .bold))
                    
                    Image(systemName: "cloud.rain.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    
                    Text("27°")
                        .font(.system(size: 20, weight: .bold))
                }
                .frame(width: 50)
                
                Rectangle()
                    .fill(.black.gradient.blendMode(.softLight))
                    .frame(width: 2, height: 85)
                    .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 3))
                
                VStack(spacing: 10) {
                    Text("Qui")
                        .font(.system(size: 15, weight: .bold))
                    
                    Image(systemName: "cloud.heavyrain.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    
                    Text("28°")
                        .font(.system(size: 20, weight: .bold))
                }
                .frame(width: 50)
                
                Rectangle()
                    .fill(.black.gradient.blendMode(.softLight))
                    .frame(width: 2, height: 85)
                    .padding(EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 3))
                
                VStack(spacing: 10) {
                    Text("Sex")
                        .font(.system(size: 15, weight: .bold))
                    
                    Image(systemName: "cloud.heavyrain.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    
                    Text("28°")
                        .font(.system(size: 22, weight: .bold))
                }
                .frame(width: 50)
                
            }
            .padding(EdgeInsets(top: 20, leading: 5, bottom: 20, trailing: 5))
            .background(Color(white: 1, opacity: 0.4))
            .cornerRadius(10)
            .id("temperatura da semana")
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .background(Color.blue.gradient)
    }
}

struct DesafioInformadorClimatico_Previews: PreviewProvider {
    static var previews: some View {
        DesafioInformadorClimatico()
    }
}

