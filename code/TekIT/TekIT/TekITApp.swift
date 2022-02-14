//
//  TekITApp.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

@main
struct TekITApp: App {
    @StateObject var appUser: User = loadUser()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appUser)
        }
    }
}
