//
//  RGBGuessGameApp.swift
//  RGBGuessGame
//
//  Created by Kene on 8/8/25.
//

import SwiftUI

@main
struct RGBGuessGameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(guess: RGB(red: 0.3,green: 0.2,blue: 0.3))
        }
    }
}
