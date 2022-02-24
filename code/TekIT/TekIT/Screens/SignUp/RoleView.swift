//
//  RoleView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct RoleView: View {
    @EnvironmentObject var appUser: User
    @Environment(\.dismiss) var dismiss
    
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
                userRole = .User
                if userRole != .none {
                    userAlert.toggle()
                    saveUser(appUser)
                    copyUser(from: loadUser(), to: appUser)
                }
            }) {
                BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "I Need Help")
            }
            .alert("Your Role is Now a User", isPresented: $userAlert) {
                        Button("OK", role: .cancel) {
                            dismiss()
                            appUser.pageSelection = 2
                        }
                    }
            
            Button(action:{
                userRole = .Volunteer
                if userRole != .none {
                    volunteerAlert.toggle()
                    saveUser(appUser)
                    copyUser(from: loadUser(), to: appUser)
                }
            }) {
                BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Volunteer to Help")
            }
            .alert("Your Role is Now a Volunteer", isPresented: $volunteerAlert) {
                        Button("OK", role: .cancel) {
                            dismiss()
                            appUser.pageSelection = 2
                        }
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
