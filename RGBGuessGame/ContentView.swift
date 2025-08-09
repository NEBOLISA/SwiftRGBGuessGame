//
//  ContentView.swift
//  RGBGuessGame
//
//  Created by Kene on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var game = Game()
     @State var guess:RGB
    @State var text = "R: ??? G: ??? B: ???"
    @State private var showScoreAlert = false

    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(Color(rgbStruct: game.target))
            
            Text(text)
            Circle()
                .foregroundStyle( Color(rgbStruct: guess))
           
            Text(guess.intString())
            
            SliderView(sliderValue: $guess.red, sliderColor: .red)
            SliderView(sliderValue: $guess.green, sliderColor: .green)
            SliderView(sliderValue: $guess.blue, sliderColor: .blue)
            Button("Hit me"){
                showScoreAlert = true
                text = game.intString()
            }
        }
        
        .padding()
        .alert(isPresented: $showScoreAlert) {
         Alert(
         title: Text("Your Score"),
         message: Text(String(game.check(guess: guess))),
         dismissButton: .default(Text("OK")) {
             text = "R: ??? G: ??? B: ???"
         guess = RGB()
         })
        }
        
    }
}

#Preview {
    ContentView(guess: RGB())
}

struct SliderView: View {
    @Binding var sliderValue:Double
    var sliderColor:Color
    var body: some View {
        HStack {
            Text("0")
            Slider(value:$sliderValue)
                .accentColor(sliderColor)
            Text("\(Int(sliderValue * 255))")
                
        }
        .padding(.horizontal)
    }
}
