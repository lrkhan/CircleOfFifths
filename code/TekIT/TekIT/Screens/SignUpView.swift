//
//  SignInView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var appUser:User
    @State private var userRoleTemp: Role = .none
    
    var body: some View {
        if userRoleTemp == .none {
            RoleView(userRole: $userRoleTemp)
        }else {
            LogInView()
//            Button(action:{
//                appUser.userRole = userRoleTemp
//
//                appUser.notSignedIn.toggle()
//            }){
//                Text("sign in")
//
//            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
