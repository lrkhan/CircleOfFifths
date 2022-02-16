//
//  CommunityUserView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct CommunityUserView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        VStack {
            Text("Community View")
            Text("User Role")
        }
    }
}

struct CommunityUserView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityUserView()
            .environmentObject(User(name: ["",""], role: .User))
    }
}
