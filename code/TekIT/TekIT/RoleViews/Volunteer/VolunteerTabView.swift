//
//  VolunteerTabView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct VolunteerTabView: View {
    @Binding var pageSelection: Int
    private let role: Role = .Volunteer
    
    var body: some View {
        TabView(selection: $pageSelection) {
            CommunityView(role: role).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(1)
            HelpView().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(2)
            ProfileView().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(3)
        }
    }
}

struct VolunteerTabView_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerTabView(pageSelection: .constant(1))
    }
}
