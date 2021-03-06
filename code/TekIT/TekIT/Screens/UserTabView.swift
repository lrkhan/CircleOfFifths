//
//  UserTabView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct UserTabView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        TabView(selection: $appUser.pageSelection) {
            CommunityView().tabItem {
                Image(systemName: "person.3.fill")
                Text("Community")
            }.tag(1)
            HelpView().tabItem {
                Image(systemName: "person.2.wave.2.fill")
                Text("Help")
            }.tag(2)
            ProfileView().tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }.tag(3)
        }
        .onAppear() {
           // UITabBar.appearance().backgroundColor = .black
            UITabBarAppearance().configureWithOpaqueBackground()
                }
    }
}

struct UserTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserTabView()
            .environmentObject(User(name: ["",""], role: .User))
    }
}
