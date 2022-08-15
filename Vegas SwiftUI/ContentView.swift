//
//  ContentView.swift
//  Vegas SwiftUI
//
//  Created by Максим Самусь on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(numbers: leftDiceNumber)
                    DiceView(numbers: rightDiceNumber)
                }
                .padding()
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("ROLL")
                        .foregroundColor(.white)
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .padding()
                }
                .background(Color(#colorLiteral(
                    red: 0.6066564322,
                    green: 0.1104470566,
                    blue: 0.1192050949,
                    alpha: 1
                )))
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


