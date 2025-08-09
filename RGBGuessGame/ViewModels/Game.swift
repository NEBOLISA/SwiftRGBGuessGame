//
//  Game.swift
//  RGBGuessGame
//
//  Created by Kene on 8/8/25.
//

import Foundation
struct Game{
  var target:RGB = RGB.random()
  
    func intString() -> String{
        return "R: \(Int(target.red * 255) ) G: \(Int(target.green * 255) ) B: \(Int(target.blue * 255) )"
    }
    
    func check(guess:RGB) -> Int{
        let dist = guess.difference(target: target)
        let score = Int((1.0 - dist) * 100 + 0.5)
        return max(score,0)
        
    }
    func startNewRound(){
        
    }
}
