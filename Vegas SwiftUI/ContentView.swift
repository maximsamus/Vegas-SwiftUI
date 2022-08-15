//
//  ContentView.swift
//  Vegas SwiftUI
//
//  Created by Максим Самусь on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                HStack {
                    DiceView(numbers: 1)
                    DiceView(numbers: 1)
                }
                .padding()
                Button(action: {
                    
                }) {
                    Text("ROLL")
                        .foregroundColor(.white)
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let numbers: Int
    var body: some View {
        Image("dice\(numbers)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
