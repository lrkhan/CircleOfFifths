//
//  UserData.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/3/22.
//

import Foundation
import SwiftUI

enum Role: Codable {
    case User, Volunteer, none
}

class User: ObservableObject, Codable {
    private var userID: String = UUID().uuidString
    @Published var userName: [String?]
    @Published var userEmail: String
    @Published var language: String
    @Published var userRole: Role
    @Published var appProficiencies: [String] = []
    @Published var notSignedIn = true
    
    enum Name{
        case FirstName, LastName, Both
    }
    
    enum CodingKeys: CodingKey {
        case userID, userName, language, userRole, appProficiencies, notSignedIn, userEmail
    }
    
    init(name: [String], role: Role) {
        self.userName = name
        self.userEmail = ""
        self.userRole = role
        
        // checks to see if it can grab phone language else uses english
        if let lang = NSLocale.current.languageCode {
            self.language = lang
            print(self.getName(.Both))
        } else {
            self.language = "en"
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
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(userName, forKey: .userName)
        try container.encode(userEmail, forKey: .userEmail)
        try container.encode(userID, forKey: .userID)
        try container.encode(userRole, forKey: .userRole)
        try container.encode(language, forKey: .language)
        try container.encode(appProficiencies, forKey: .appProficiencies)
        try container.encode(notSignedIn, forKey: .notSignedIn)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.userID = try container.decode(String.self, forKey: .userID)
        self.userName = try container.decode([String].self, forKey: .userName)
        self.userEmail = try container.decode(String.self, forKey: .userEmail)
        self.userRole = try container.decode(Role.self, forKey: .userRole)
        self.language = try container.decode(String.self, forKey: .language)
        self.appProficiencies = try container.decode([String].self, forKey: .appProficiencies)
        self.notSignedIn = try container.decode(Bool.self, forKey: .notSignedIn)
    }
    
    func changeID(to userID: String) {
        self.userID = userID
    }
}

func loadUser() -> User {
    do {
        let fileURL = try FileManager.default
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("userData.json")
        
        let data = try Data(contentsOf: fileURL)
        let userData = try JSONDecoder().decode(User.self, from: data)
        
        return userData
    } catch {
        print("error reading user data")
        return User(name: [], role: .none)
    }
}

func saveUser(_ user: User) {
    do {
        let fileURL = try FileManager.default
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("userData.json")
        
        try JSONEncoder()
            .encode(user)
            .write(to: fileURL)
    } catch {
        print("error writing user data")
    }
}
