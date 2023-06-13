//
//  RGBTransformer.swift
//  DesafioRGB
//
//  Created by Rodrigo Oliveira on 29/03/23.
//

import Foundation
import SwiftUI

struct RGBTransformer {
    
    func transformRGBToColor(r:String, g:String, b:String) -> Color{
        let red = convertStringToDouble(value: r)/255
        let green = convertStringToDouble(value: g)/255
        let blue = convertStringToDouble(value: b)/255
        return Color(red: red, green: green, blue: blue)
    }
    
    private func convertStringToDouble(value:String) -> Double{
        Double(Int(value) ?? 0)
    }
    
}
