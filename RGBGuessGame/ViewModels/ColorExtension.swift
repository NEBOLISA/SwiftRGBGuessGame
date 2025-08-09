//
//  ColorExtension.swift
//  RGBGuessGame
//
//  Created by Kene on 8/8/25.
//

import Foundation
import SwiftUI
extension Color{
    init(rgbStruct:RGB){
        self.init(red: rgbStruct.red, green: rgbStruct.green, blue: rgbStruct.blue)
    }
}
