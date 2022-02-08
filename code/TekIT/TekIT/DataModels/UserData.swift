//
//  UserData.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/3/22.
//

import Foundation
import SwiftUI

enum Role {
    case User, Volunteer, none
}

enum Name{
    case FirstName, LastName, Both
}

class User {
    private var userName: [String]
    private var Language: String
    private var userRole: Role
    private var appProficiencies: [String] = []
    private var userTextSize: Int = 17
    private var signedInUser = false
    
    init(name: [String], role: Role) {
        self.userName = name
        
        self.userRole = role
        
        // checks to see if it can grab phone language else uses english
        if let lang = NSLocale.current.languageCode {
            self.Language = lang
            print(self.Language)
        } else {
            self.Language = "en"
        }
    }
    
    
    // Functions to change user parameters
    func signedIn() -> Void {
        self.signedInUser = true
    }
    
    func changeRole(to userRole: Role) {
        self.userRole = userRole
    }
    
    func changeName(First: String, Last: String) {
        self.userName = [First, Last]
    }
    
    func changeFontSize(to val: Int) {
        self.userTextSize = val
    }
    
    // Functions to get user paramters
    func getSignInStatus() -> Bool {
        return self.signedInUser
    }
    
    func getRole() -> Role{
        return self.userRole
    }
    
    func getName(_ type: Name) -> String {
        switch type {
        case .FirstName:
            return self.userName[0]
        case .LastName:
            return self.userName[1]
        case .Both:
            return "\(getName(.FirstName)) \(getName(.LastName))"
        }
    }
    
    func getTextSize() -> Int {
        return self.userTextSize
    }
}
