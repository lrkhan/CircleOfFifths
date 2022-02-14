//
//  AppleIDView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/11/22.
//

import AuthenticationServices
import SwiftUI

struct AppleIDView: View {
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var appUser: User
    
    let userScreen = screenData()
    var buttonWidth: CGFloat { userScreen.buttonWidth }
    var buttonHeight: CGFloat { userScreen.buttonHeightApple }
    
    var body: some View {
        SignInWithAppleButton(.continue) { request in
            request.requestedScopes = [.email, .fullName]
        } onCompletion: { result in
            switch result{
            case .success(let auth):
                
                switch auth.credential {
                case let authCred as ASAuthorizationAppleIDCredential:
                    //user ID
                    appUser.changeID(to: authCred.user)
                    
                    //user Info
                    appUser.userEmail = authCred.email ?? ""
                    let firstName = authCred.fullName?.givenName
                    let lastName = authCred.fullName?.familyName
                    
                    appUser.userName = [firstName, lastName]
                    break
                default:
                    break
                }
                
                break
            case . failure(let error):
                print(error)
                break
            }
        }
        .signInWithAppleButtonStyle(colorScheme == .dark ? .white : .black)
        .frame(width: buttonWidth, height: buttonHeight)
    }
}

struct AppleIDView_Previews: PreviewProvider {
    static var previews: some View {
        AppleIDView()
    }
}
