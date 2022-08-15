//
//  DiceView.swift
//  Vegas SwiftUI
//
//  Created by Максим Самусь on 15.08.2022.
//

import SwiftUI

struct DiceView: View {
    let numbers: Int
    var body: some View {
        Image("dice\(numbers)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(numbers: 1)
    }
}
