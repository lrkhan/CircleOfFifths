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

class User: ObservableObject {
    private var userID = UUID()
    @Published var userName: [String?]
    @Published var Language: String
    @Published var userRole: Role
    @Published var appProficiencies: [String] = []
    @Published var notSignedIn = true
        
    enum Name{
        case FirstName, LastName, Both
    }
    
    init(name: [String], role: Role) {
        self.userName = name
        
        self.userRole = role
        
        // checks to see if it can grab phone language else uses english
        if let lang = NSLocale.current.languageCode {
            self.Language = lang
            print(self.getName(.Both))
        } else {
            self.Language = "en"
        }
    }
    
    
    // Functions to change user parameters  
    func getRole() -> Role{
        return self.userRole
    }
    
    func getName(_ type: Name) -> String {
        if userName.isEmpty {
            return "NONE"
        } else {
        switch type {
        case .FirstName:
            return self.userName[0] ?? "NONE"
        case .LastName:
            return self.userName[1] ?? "NONE"
        case .Both:
            return "\(getName(.FirstName)) \(getName(.LastName))"
        }
        }
    }
    
}
