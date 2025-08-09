//
//  RGB.swift
//  RGBGuessGame
//
//  Created by Kene on 8/8/25.
//

import Foundation
struct RGB{
    var red:Double
    var green:Double
    var blue:Double
    init(red: Double = 0.5, green: Double = 0.5, blue: Double = 0.5) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    static func random() -> RGB{
        return RGB(red: Double.random(in: 0...1),green: Double.random(in: 0...1),blue: Double.random(in: 0...1))
    }
    func intString() -> String{
        return "R: \(Int(self.red * 255) ) G: \(Int(self.green * 255) ) B: \(Int(self.blue * 255) )"
    }
    
    func difference(target:RGB)->Double{
        
        let rDiff = red - target.red
        let bDiff = blue - target.blue
        let gDiff = green - target.green
        return sqrt((rDiff * rDiff) + (bDiff * bDiff) + (gDiff * gDiff))
    }
}


