//
//  Help-VolunteerView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct HelpVolunteerView: View {
    @EnvironmentObject var appUser: User
    
    private var welcomeMessage: String {
        "Hello" + (appUser.getName(.FirstName).isEmpty ? "": " \(appUser.getName(.FirstName))")
    }
    
    let screen = screenData()
    
    var body: some View {
        VStack{
            Text(welcomeMessage)
                .fontWeight(.medium)
                .font(.largeTitle)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray)
                
                VStack{
                    Image(systemName: "globe.americas")
                        .font(.system(size: screen.screenHeight*0.1))
                        .foregroundColor(.white)
                        .padding(.vertical)
                    Text("Helping Since: \(appUser.dateSignedUp.formatted(date: .long, time: .omitted))")
                        .foregroundColor(.white)
                        .font(.body)
                        .padding(.bottom)
                }
            }
            .frame(height: screen.screenHeight*0.2)
            .padding()

            Button( action: {
                print("How to answer a call")
            })  {
                BigButtonView(isLargeButton: false, buttonColor: .blue, buttonText: "How to Answer a Call")
            }
            
            HStack{
                StatView(of: .People)
                
                Spacer()
                
                StatView(of: .Time)
            }
            .padding()
        }
    }
}

struct Help_VolunteerView_Previews: PreviewProvider {
    static var previews: some View {
        HelpVolunteerView()
    }
}
