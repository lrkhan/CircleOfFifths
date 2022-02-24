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
    var dateSignedUp = Date.now
    @Published var peopleHelped: Int = 0
    @Published var minutesHelped: Int = 0
    
    @Published var pageSelection = 2
    
    enum Name{
        case FirstName, LastName, Both
    }
    
    enum CodingKeys: CodingKey {
        case userID, userName, userEmail, language, userRole, appProficiencies, notSignedIn, dateSignedUp, peopleHelped, minutesHelped
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
            return ""
        } else {
            switch type {
            case .FirstName:
                return self.userName[0] ?? ""
            case .LastName:
                return self.userName[1] ?? ""
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
        try container.encode(dateSignedUp, forKey: .dateSignedUp)
        try container.encode(peopleHelped, forKey: .peopleHelped)
        try container.encode(minutesHelped, forKey: .minutesHelped)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.userID = try container.decode(String.self, forKey: .userID)
        self.userName = try container.decode([String?].self, forKey: .userName)
        self.userEmail = try container.decode(String.self, forKey: .userEmail)
        self.userRole = try container.decode(Role.self, forKey: .userRole)
        self.language = try container.decode(String.self, forKey: .language)
        self.appProficiencies = try container.decode([String].self, forKey: .appProficiencies)
        self.notSignedIn = try container.decode(Bool.self, forKey: .notSignedIn)
        self.dateSignedUp = try container.decode(Date.self, forKey: .dateSignedUp)
        self.peopleHelped = try container.decode(Int.self, forKey: .peopleHelped)
        self.minutesHelped = try container.decode(Int.self, forKey: .minutesHelped)
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
        
        print("Loaded User Successfully")
        
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
        
        print("Writing complete")
        
        return
    } catch {
        print("error writing user data")
        
        return
    }
}

func copyUser(from: User, to: User) {
    to.notSignedIn = from.notSignedIn
    to.language = from.language
    to.userRole = from.userRole
    to.minutesHelped = from.minutesHelped
    to.peopleHelped = from.peopleHelped
    to.dateSignedUp = from.dateSignedUp
    to.userName = from.userName
    to.userEmail = from.userEmail
    to.appProficiencies = from.appProficiencies
    
    saveUser(to)
}
