//
//  CustomModifier.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 06/07/23.
//
// Experimento para criar um modificador customizado

import SwiftUI

struct TextoVermelhoGrande: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .foregroundColor(.red)
            .font(.system(.largeTitle))
    }
}

extension View {
    func tituloPrincipal() -> some View {
        modifier(TextoVermelhoGrande())
    }
}

struct CustomModifier: View {
    var body: some View {
        VStack(spacing: 10){
            //Utilizando o ViewModifier
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .modifier(TextoVermelhoGrande())
            
            //Utilizando a extension da View contendo o ViewModifier
            Text("Testando 123")
                .tituloPrincipal()
        }
    }
}

struct CustomModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifier()
    }
}
