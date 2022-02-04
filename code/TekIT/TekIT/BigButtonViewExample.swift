//
//  BigButtonViewExample.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/3/22.
//

import SwiftUI

struct BigButtonViewExample: View {
    @State var text: CGFloat = 17
    var body: some View {
        VStack {
            Stepper(value: $text, in: 17...50) {
                Text("Text Size: \(Int(text))")
            }
            .padding()
            BigButtonView(isLargeButton: true, buttonColor: .red, buttonText: "Delete this", textSize: text)
            BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Save this", textSize: text)
        }
    }
}

struct BigButtonViewExample_Previews: PreviewProvider {
    static var previews: some View {
        BigButtonViewExample()
    }
}
