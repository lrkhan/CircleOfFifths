//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var usr = User(name: ["",""], role: .none)
    @State var notSignedIn = true
    
    @State private var userRole: Role = .none
    
    var body: some View {
        switch userRole {
        case .User:
            UserTabView()
        case .Volunteer:
            VolunteerTabView()
        default:
            if notSignedIn {
                SignUpView(notSignedIn: $notSignedIn, userRole: $userRole)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
