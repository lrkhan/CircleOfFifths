//
//  UserTabView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct UserTabView: View {
    @State private var pageSelection = 2
    
    var body: some View {
        TabView(selection: $pageSelection) {
            CommunityView().tabItem { Text("Tab Label 1") }.tag(1)
            HelpView().tabItem { Text("Tab Label 2") }.tag(2)
            ProfileView().tabItem { Text("Tab Label 3") }.tag(3)
        }
    }
}

struct UserTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserTabView()
    }
}
