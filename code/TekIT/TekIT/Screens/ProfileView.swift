//
//  ProfileView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct ProfileView: View {
    let role: Role
    
    var body: some View {
        switch role {
        case .User:
            VStack {
                Text("Community View")
                Text("User Role")
            }
        case .Volunteer:
            VStack {
                Text("Community View")
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
        ProfileView(role: .User)
    }
}
