//
//  ContentView.swift
//  DesafioRGB
//
//  Created by Rodrigo Oliveira on 29/03/23.
//
// Desafio para realizar o uso e estudo de:
// - Enum e protocolos CaseIterable e Identifiable
// - Picker
// - Switch case
// - Color

import SwiftUI

struct DesafioRGB: View {
    @State var redS = String()
    @State var greenS = String()
    @State var blueS = String()
    
    @State var redD: Double = 0
    @State var greenD = Double()
    @State var blueD = Double()
    
    enum PickerOptions: String, CaseIterable, Identifiable {
        var id: Self {self}
        
        case TextField
        case Slider
    }
    
    @State var inputType = PickerOptions.TextField
    
    var body: some View {
        VStack {
            Form {
                Section("Tipo de seletor") {
                    Picker("Tipo de seletor", selection: $inputType) {
                        ForEach(PickerOptions.allCases) { option in
                            Text(option.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Seletor") {
                    switch inputType {
                    case .TextField:
                        HStack {
                            TextField("Red", text: $redS)
                        }
                        HStack {
                            TextField("Green", text: $greenS)
                        }
                        HStack {
                            TextField("Blue", text: $blueS)
                        }
                    case .Slider:
                        HStack {
                            Text("Red")
                                .frame(width: 50, alignment: .leading)
                            Slider(value: $redD, in: 0...255)
                        }
                        HStack {
                            Text("Green")
                                .frame(width: 50, alignment: .leading)
                            Slider(value: $greenD, in: 0...255)
                        }
                        HStack {
                            Text("Blue")
                                .frame(width: 50, alignment: .leading)
                            Slider(value: $blueD, in: 0...255)
                        }
                    }
                }
                
                Circle()
                    .fill(RGBTransformer().transformRGBToColor(
                        r: inputType == .TextField ? redS : String(Int(redD)),
                        g: inputType == .TextField ? greenS : String(Int(greenD)),
                        b: inputType == .TextField ? blueS : String(Int(blueD)))
                    )
                    .padding()
            }
        }
        .navigationTitle("RGB Color")
    }
}

struct DesafioRGB_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            DesafioRGB()
        }
    }
}

