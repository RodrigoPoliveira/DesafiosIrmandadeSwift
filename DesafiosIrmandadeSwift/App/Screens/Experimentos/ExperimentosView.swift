//
//  ExperimentosView.swift
//  DesafiosIrmandadeSwift
//
//  Created by Rodrigo Oliveira on 13/06/23.
//

import SwiftUI

struct ExperimentosView: View {
    var body: some View {
        VStack{
            Text("Experimentos View")
        }
        .navigationTitle("Experimentos")
    }
}

struct ExperimentosView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ExperimentosView()
        }
    }
}
