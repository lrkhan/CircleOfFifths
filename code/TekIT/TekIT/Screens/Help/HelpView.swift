//
//  HelpView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct HelpView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        switch appUser.userRole {
        case .User:
            HelpUserView()
        case .Volunteer:
            HelpVolunteerView()
        default:
            Text("An Error has Occured")
        }
        
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
