//
//  ButtonView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct BigButtonView: View {
    var isLargeButton: Bool
    var buttonColor: Color
    var buttonText: String
    
    // Gets the screen size of the device and changes the size of the buttons
    let userScreen = screenData()
    var buttonWidth: CGFloat { userScreen.buttonWidth}
    var buttonLarge: CGFloat { userScreen.buttonHeightLarge }
    var buttonSmall: CGFloat { userScreen.buttonHeightSmall }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(buttonColor)
                .frame(height: isLargeButton ? buttonLarge : buttonSmall)
                .padding()
            Text(buttonText)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .frame(width: buttonWidth, height: buttonSmall)
                .accessibility(label: Text(buttonText))
        }
        //.padding()
    }
}

// Previews
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Get Help")
            BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Get Started")
        }
    }
}

struct ButtonView_Preview_dark: PreviewProvider {
    static var previews: some View {
        VStack {
            BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Get Help")
                .preferredColorScheme(.dark)
            BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Get Started")
        }
    }
}
