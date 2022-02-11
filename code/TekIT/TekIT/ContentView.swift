//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appUser = loadUser()
    
    var body: some View {
        VStack {
//            if appUser.notSignedIn {
//                SignUpView()
//            } else {
//                UserTabView()
//            }
        switch appUser.userRole {
        case .User, .Volunteer:
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
