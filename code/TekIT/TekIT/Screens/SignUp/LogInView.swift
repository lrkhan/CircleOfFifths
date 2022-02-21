//
//  LogInView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/8/22.
//  Based on Jerome W. Code

import SwiftUI

struct LogInView: View {
    @EnvironmentObject var appUser: User
    @Binding var userRole: Role
    // Gets the screen size of the device
    let screenSize = screenData()
    
    var body: some View {
        VStack{
            Spacer()
            
            Group {
                Text("Sign-In to TekIT")
                    .font(.largeTitle)
                
                Text("Sign in with your Apple ID or Get Started and Sign in Later")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .frame(width:screenSize.buttonWidth)

            }
            .padding(.bottom)
            
            Group{
                Button(action:{
                    // need to fit a BLANK user in here
                    appUser.userName = ["",""]
                    appUser.userRole = userRole
                }) {
                    BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Get Started")
                }
            }
            
            AppleIDView(userRole: $userRole)
            
            Spacer()
            
            
        }
    }
}

// Previews
struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView(userRole: .constant(.User))
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
            .environmentObject(User(name: ["",""], role: .User))
    }
}
