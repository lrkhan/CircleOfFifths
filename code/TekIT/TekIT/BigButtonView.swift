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
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(buttonColor)
                .frame(width: 325, height: isLargeButton ? 400 : 75)
            Text(buttonText)
                .font(.body)
                .foregroundColor(Color.white)
        }
    }
}

// Previews
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Get Help")
                .padding()
            BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Get Started")
                .padding()
        }
    }
}

struct ButtonView_Preview_dark: PreviewProvider {
    static var previews: some View {       
        VStack {
            BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Get Help")
                .preferredColorScheme(.dark)
                .padding()
            BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Get Started")
                .padding()
        }
    }
}
