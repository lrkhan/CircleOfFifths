//
//  SignInView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct SignUpView: View {
    @Binding var notSignedIn: Bool
    @Binding var userRole: Role
    
    @State private var userRoleTemp: Role = .none
    
    var body: some View {
        if userRoleTemp == .none {
            RoleView(userRole: $userRoleTemp)
        } else {
            Button(action:{
                userRole = userRoleTemp
                
                notSignedIn.toggle()
            }){
                Text("sign in")
                
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(notSignedIn: .constant(true), userRole: .constant(.none))
    }
}
