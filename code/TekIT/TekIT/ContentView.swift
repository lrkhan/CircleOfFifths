//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        VStack {            
            switch appUser.userRole {
            case .User, .Volunteer:
                UserTabView()
            default:
                if appUser.notSignedIn {
                    SignUpView()
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
