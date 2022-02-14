//
//  RoleView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct RoleView: View {
    @Binding var userRole: Role
    
    var body: some View {
        VStack {
            
            if userRole == .none {
                Text("Welcome To TeckIT")
                    .font(.largeTitle)
                    .padding(.bottom)
            }
            
            Button(action:{
                userRole = .User
            }) {
                BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "I Need Help")
            }
            
            Button(action:{
                userRole = .Volunteer
            }) {
                BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Volunteer to Help")
            }
            
        }
    }
}

struct RoleView_Previews: PreviewProvider {
    static var previews: some View {
        RoleView(userRole: .constant(.none))
    }
}
