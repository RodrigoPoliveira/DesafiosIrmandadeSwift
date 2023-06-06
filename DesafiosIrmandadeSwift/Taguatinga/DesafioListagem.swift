//
//  ContentView.swift
//  DesafioListagem
//
//  Created by Rodrigo Oliveira on 15/02/23.
//

// Desafio para realizar o estudo de:
// - VStack, HStak e ZStack
// - Rectangle, Circle, Ellipse, Capsule, RoundedRectangle
// - Text
// - Image
// - SF Symbols

import SwiftUI

struct DesafioListagem: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("Challenge Time:")
                .font(.system(size: 30))
            
            HStack(spacing: 20) {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                
                Ellipse()
                    .fill(Color.green)
                    .frame(width: 50, height: 30)
                
                Capsule()
                    .fill(Color.black)
                    .frame(width: 50, height: 30)
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow)
                    .frame(width: 50, height: 50)
            }.padding(10)
            
            HStack(spacing: 20) {
                Text("Quadrado")
                    .foregroundColor(.blue)
                
                Text("Circulo")
                    .font(Font.custom("Courier New Bold", size: 10))
                    .foregroundColor(.red)
                    .padding(.leading, 5)
                
                Text("Elipse")
                    .foregroundColor(.green)
                    .padding(.leading, 10)
                
                Text("Capsula")
                    .font(Font.custom("Chalkduster", size: 10))
                    .foregroundColor(.black)
                    .padding(.leading, 18)
                
                Text("Borda")
                    .font(.custom("Impact", size: 10))
                    .bold()
                    .foregroundColor(.yellow).bold()
                    .padding(.leading, 8)
            }
            .font(.system(size: 10))
            .padding(10)
            
            HStack(spacing: 20) {
                Image(systemName: "cloud.sun.rain.fill")
                    .foregroundStyle(.gray, .yellow, .blue)
                
                Image(systemName: "cloud.drizzle.fill")
                    .foregroundStyle(.gray, .red)
                
                Image(systemName: "cloud.rain.fill")
                    .foregroundStyle(.gray, .green)
                
                Image(systemName: "cloud.heavyrain.fill")
                    .foregroundStyle(.gray, .black)
                
                Image(systemName: "cloud.hail.fill")
                    .foregroundStyle(.gray, .yellow)
            }
            .font(.system(size: 40))
            .padding(10)
            
            HStack(spacing: 25) {
                VStack() {
                    Image(systemName: "cloud.snow.fill")
                        .foregroundStyle(.gray, .blue)
                    
                    ZStack {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 20)
                        Text("Nevando")
                            .font(.system(size: 9))
                    }
                    .padding(.top, 20)
                }
                
                
                VStack {
                    Image(systemName: "cloud.drizzle.fill")
                        .foregroundStyle(.gray, .red)
                    
                    ZStack {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 20)
                        Text("Pouco")
                            .font(.system(size: 9))
                    }
                    .padding(.top, 20)
                }
                
                VStack {
                    Image(systemName: "cloud.rain.fill")
                        .foregroundStyle(.gray, .green)
                    
                    ZStack {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 20)
                        Text("Medio")
                            .font(.system(size: 9))
                    }
                    .padding(.top, 20)
                    
                }
                
                VStack {
                    Image(systemName: "cloud.heavyrain.fill")
                        .foregroundStyle(.gray, .black)
                    
                    ZStack {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 20)
                        Text("Forte")
                            .font(.system(size: 9))
                    }
                    .padding(Edge.Set.top, 20)
                }
                
                VStack {
                    Image(systemName: "cloud.drizzle.fill")
                        .foregroundStyle(.gray, .black)
                    
                    ZStack {
                        Capsule()
                            .fill(.purple)
                            .frame(width: 50, height: 20)
                        Text("Granizo")
                            .font(.system(size: 9))
                    }
                    .padding(.top, 20)
                }
            }
            .font(.system(size: 25))
            .foregroundColor(.white)
        }
    }
}

struct DesafioListagem_Previews: PreviewProvider {
    static var previews: some View {
        DesafioListagem()
    }
}


