//
//  UserTabView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct UserTabView: View {
    @State private var pageSelection = 2
    
    private let role: Role = .User
    
    var body: some View {
        TabView(selection: $pageSelection) {
            CommunityView(role: role).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(1)
            HelpView().tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(2)
            ProfileView(role: role).tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(3)
        }
    }
}

struct UserTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserTabView()
    }
}
