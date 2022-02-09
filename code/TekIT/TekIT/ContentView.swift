//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appUser = User(name: ["Jane", "Doe"],role: .none)
    //private var notSignedIn: Bool = true
    
    //@State private var userRole: Role = .none
    
    var body: some View {
        VStack {
//            if appUser.notSignedIn {
//                SignUpView()
//            } else {
//                UserTabView()
//            }
        switch appUser.userRole {
        case .User:
            UserTabView()
        case .Volunteer:
            UserTabView()
        default:
            if appUser.notSignedIn {
                SignUpView()
            }
        }
        }
        .environmentObject(appUser)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
