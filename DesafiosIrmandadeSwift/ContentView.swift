//
//  ContentView.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 05/06/23.
//

import SwiftUI

struct ContentView: View {
    @State var title = ""
    
    var body: some View {
        VStack {
            TabView {
                DesafiosView()
                    .tabItem {
                        Image(systemName: "trophy.fill")
                        Text("Desafios")
                    }
                    .onAppear {
                        title = "Desafios"
                    }
                
                ExperimentosView()
                    .tabItem {
                        Image(systemName: "dumbbell.fill")
                        Text("Experimentos")
                    }
                    .onAppear {
                        title = "Experimentos"
                    }
                    
            }
        }
        .navigationTitle(title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
    }
}
