//
//  RoleView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct RoleView: View {
    @Binding var userRole: Role
    
    @State private var userAlert = false
    @State private var volunteerAlert = false
    
    var body: some View {
        VStack {
            
            if userRole == .none {
                Text("Welcome To TekIT")
                    .font(.largeTitle)
                    .padding(.bottom)
            }
            
            Button(action:{
                if userRole != .none {
                    userAlert.toggle()
                }
                userRole = .User
            }) {
                BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "I Need Help")
            }
            .alert("Your Role is Now a User", isPresented: $userAlert) {
                        Button("OK", role: .cancel) { }
                    }
            
            Button(action:{
                if userRole != .none {
                    volunteerAlert.toggle()
                }
                userRole = .Volunteer
            }) {
                BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Volunteer to Help")
            }
            .alert("Your Role is Now a Volunteer", isPresented: $volunteerAlert) {
                        Button("OK", role: .cancel) { }
                    }
            
        }
    }
}

struct RoleView_Previews: PreviewProvider {
    static var previews: some View {
        RoleView(userRole: .constant(.none))
            .environmentObject(User(name: ["",""], role: .User))
    }
}
