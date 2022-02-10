//
//  LogInView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/8/22.
//  Based on Jerome W. Code

import SwiftUI

struct LogInView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    
    // Gets the screen size of the device and changes the size of the buttons
    let screenSize: CGRect = UIScreen.main.bounds
    var verticalPadding: CGFloat { screenSize.height * 0.03}
    var buttonHeightLarge: CGFloat { screenSize.height * 0.50}
    var buttonHeightSmall: CGFloat { screenSize.height * 0.10}
    
    var body: some View {
        ZStack {
            VStack() {
                Spacer()
                
                Text("Welcome To TeckIT")
                    .font(.largeTitle)
                
                Spacer()
                
                Group {
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.secondary)
                        TextField("Enter your name", text: $name)
                            .foregroundColor(Color.black)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    HStack {
                        Image("icons8-key-50")
                            .resizable()
                            .frame(width: 16.0, height: 16.0) .foregroundColor(.secondary)
                        SecureField("Enter password", text: $password)
                            .foregroundColor(Color.black)
                        
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                }
                
                Button(action: {
                    print("Name")
                }) {
                    Text("Sign Up")
                        .padding()
                    
                }
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
                Spacer()
                Spacer()
                
            }.padding(.horizontal)
        }
    }
}

// Previews
struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
            .previewInterfaceOrientation(.portrait)
    }
}
