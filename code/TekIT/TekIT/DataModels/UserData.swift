//
//  UserData.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/3/22.
//

import Foundation

enum Role {
    case User, Volunteer, none
}

class User {
    private var Name: String
    private var Language: String
    private var appRole: Role
    private var AppProficiencies: [String] = []
    
    private var signedInUser = false
    
    init(name: String, role: Role) {
        self.Name = name
        
        self.appRole = role
        
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
    
    func changeRole(to userRole: Role) -> Void {
        self.appRole = userRole
    }
    
    func changeName(to newName: String) -> Void {
        self.Name = newName
    }
}
