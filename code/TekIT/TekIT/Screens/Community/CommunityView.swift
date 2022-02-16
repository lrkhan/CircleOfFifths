//
//  CommunityView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct CommunityView: View {
    @EnvironmentObject var appUser:User
    
    var body: some View {
        switch appUser.userRole {
        case .User:
            CommunityUserView()
        case .Volunteer:
            CommunityVolunteerView()
        case .none:
            VStack{
                Text("An Error has Occured")
                Text("User role: NONE")
            }
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
            .environmentObject(User(name: ["",""], role: .User))
    }
}
