//
//  ProfileView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        switch appUser.getRole() {
        case .User:
            VStack {
                Text("Profile View")
                Text("User Role")
            }
        case .Volunteer:
            VStack {
                Text("Profile View")
                Text("Volunteer Role")
            }
        case .none:
            VStack{
                Text("An Error has Occured")
                Text("User role: NONE")
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
