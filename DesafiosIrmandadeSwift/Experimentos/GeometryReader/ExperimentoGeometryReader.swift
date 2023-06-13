//
//  ExperimentoGeometryReader.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 13/06/23.
//
// Experimento para realizar o uso e estudo de GeometryReader
// e fazer com que a View se adapte a qualquer tamanho de tela

import SwiftUI

struct ExperimentoGeometryReader: View {
    var body: some View {
        GeometryReader { proxy in
            VStack() {
                ZStack {
                    Button("Sair"){}
                        .background(RoundedRectangle(cornerRadius: 10).fill(.black).frame(width: proxy.size.width * 0.13, height: proxy.size.height * 0.04))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .offset(x: -proxy.size.width * 0.07, y: -proxy.size.height * 0.05)
                    //.background(.gray)
                    
                    Circle()
                        .fill(.black)
                        .frame(width: proxy.size.width * 0.3)
                        .offset(y: proxy.size.height * 0.08)
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .background(.gray)
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: proxy.size.width * 0.3, height: proxy.size.height * 0.25)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: proxy.size.width * 0.3, height: proxy.size.height * 0.25)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: proxy.size.width * 0.3, height: proxy.size.height * 0.25)
                }
                .frame(maxWidth: .infinity)
                //.background(.blue)
                .padding(Edge.Set.top, proxy.size.height * 0.08)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(0..<8) { _ in
                            Circle()
                                .frame(width: proxy.size.width * 0.25)
                        }
                    }
                    .padding()
                    //.background(.blue)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            //.background(.red)
        }
        
    }
}

struct ExperimentoGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentoGeometryReader()
    }
}
