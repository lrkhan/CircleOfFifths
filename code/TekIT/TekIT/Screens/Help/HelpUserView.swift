//
//  HelpUserView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct HelpUserView: View {
    @EnvironmentObject var appUser: User
    
    @State var apps = false
    
    private var welcomeMessage: String {
        "Hello" + (appUser.getName(.FirstName).isEmpty ? "": " \(appUser.getName(.FirstName))")
    }
    
    var body: some View {
        VStack{
            Text(welcomeMessage)
                .fontWeight(.medium)
                .font(.largeTitle)
            Button(action:{
                
            }){
                BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Call for Help")
            }
            
            Button(action:{
                apps.toggle()
            }){
                BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Select App")
            }
        }
        .sheet(isPresented: $apps){RequestSpecificHelpView()}
    }
}

struct HelpUserView_Previews: PreviewProvider {
    static var previews: some View {
        HelpUserView()
            .environmentObject(User(name: ["",""], role: .User))
    }
}
