//
//  CommunityVolunteerView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct CommunityVolunteerView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        VStack {
            Text("Community View")
            Text("Volunteer Role")
        }
    }
}

struct CommunityVolunteerView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityVolunteerView()
    }
}
