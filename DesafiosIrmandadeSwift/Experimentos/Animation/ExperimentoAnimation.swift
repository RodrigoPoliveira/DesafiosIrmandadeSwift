//
//  AnimationView.swift
//  Testes
//
//  Created by Rodrigo Oliveira on 24/05/23.
//
// Experimento para realizar o uso e estudo de Animações

import SwiftUI

struct ExperimentoAnimation: View {
    @State var isDay: Bool = true
    
    var body: some View {
        VStack {
            Image(systemName: "cloud.fill")
                .font(.system(size: 100))
                .foregroundColor(.white)
                .offset(x: isDay ? 260 : -260)
                .animation(.easeInOut(duration: 30), value: isDay)
                .opacity(isDay ? 1 : 0)
                .animation(.easeInOut(duration: 1), value: isDay)
            
            ZStack {
                Image(systemName: "moon.fill")
                    .font(.system(size: 150))
                    .foregroundColor(.white)
                    .offset(y: isDay ? 100 : 0)
                    .opacity(isDay ? 0 : 1)
                
                Image(systemName: "sun.max.fill")
                    .font(.system(size: 150))
                    .foregroundColor(.yellow)
                    .offset(y: isDay ? 0 : 100)
                    .opacity(isDay ? 1 : 0)
            }
            .animation(.easeInOut, value: isDay)
            
            HStack {
                Toggle("Noite - Dia", isOn: $isDay)
            }
            .padding()
            .background(Color.white.opacity(0.7))
            .cornerRadius(10)
            
        }
        .background(
            ForEach(1..<70) { _ in
                Circle()
                    .frame(width: 3)
                    .foregroundColor(.white)
                    .opacity(isDay ? 0 : 1)
                    .offset(x: CGFloat(Int.random(in: -200..<200)), y: CGFloat(Int.random(in: -400..<400)))
                    .animation(.linear, value: isDay)
                    .opacity(isDay ? 0 : 1)
                    .animation(.linear(duration: 1), value: isDay)
            }
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(isDay ?
                    LinearGradient(gradient: Gradient(colors: [.blue, Color("blue1")]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                    :
                    LinearGradient(gradient: Gradient(colors: [Color("blue7"), Color("blue5"), Color("blue3")]),
                                   startPoint: .top,
                                   endPoint: .bottom)
        )
    }
}

struct ExperimentoAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentoAnimation()
    }
}

