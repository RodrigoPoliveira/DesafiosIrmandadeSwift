//
//  ContentView.swift
//  DesafioHarryPotter
//
//  Created by Rodrigo Oliveira on 02/03/23.
//
// Desafio para realizar o uso e estudo de:
// - @State (Property Wrapper)
// - Button
// - Array
// - If

import SwiftUI

var casasHp = ["Grifinória", "Sonserina", "Lufa-Lufa", "Corvinal"]
var i = 0

struct DesafioHarryPotter: View {
    @State var casaSorteada: String?
    
    var body: some View {
        VStack{
            Text("Qual a sua casa em Harry Potter?")
                .font(.system(size: 30, weight: Font.Weight.bold))
                .multilineTextAlignment(TextAlignment.center)
            
            Group{
                Image(casaSorteada ?? "Hogwarts")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                if(casaSorteada != nil){
                    Text(casaSorteada!)
                        .textCase(.uppercase)
                        .padding(.bottom, 30)
                        .font(.system(size: 25, weight: .black))
                }
            }
            
            Button("Escolha sua casa") {
                if(i>3){
                    i = 0
                }
                casaSorteada = casasHp[i]
                i += 1
            }
            .bold()
            .padding(20)
            .foregroundColor(.black)
            .background(.yellow)
            .cornerRadius(20)
        }
    }
}

struct DesafioHarryPotter_Previews: PreviewProvider {
    static var previews: some View {
        DesafioHarryPotter()
    }
}

