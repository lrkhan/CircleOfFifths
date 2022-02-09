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
    let screenSize: CGRect = UIScreen.main.bounds
    var buttonWidth: CGFloat { screenSize.width * 0.80}
    var buttonHeightLarge: CGFloat { screenSize.height * 0.50}
    var buttonHeightSmall: CGFloat { screenSize.height * 0.10}
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(buttonColor)
                .frame(width: screenSize.width * 0.80, height: isLargeButton ? buttonHeightLarge : buttonHeightSmall)
            Text(buttonText)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .frame(width: buttonWidth-15, height: buttonHeightSmall-10)
                .accessibility(label: Text(buttonText))
        }
        .padding()
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
