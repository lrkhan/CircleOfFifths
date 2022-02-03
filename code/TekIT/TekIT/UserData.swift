//
//  UserData.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/3/22.
//

import Foundation

enum Role {
    case User, Volunteer
}

class User: Codable {
    var Name: String
    var Language: String
    var appRole: Role
    var AppProficiencies: [String] = []
    
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
    
}
