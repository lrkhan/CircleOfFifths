//
//  ProfileView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appUser: User
    @State private var tempUser: User = User(name: [], role: .User)
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var shouldSendNewsletter = false
    @State private var devices = 1
    @State private var prefrences = 1
    @State private var languageIndex = 0
    var language = ["English", "Spanish", "Cantonese", "Arabic", "German", "Russian", "Korean"]
    
    
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                
                Form {
                    
                    if appUser.notSignedIn {
                        Section(header: Text("Log In")) {
                            AppleIDView(userRole: $appUser.userRole)
                        }
                    }
                    
                    Section(header: Text("Personal Information")) {
                        
                        NavigationLink(destination: NameView(firstName: $firstname, lastName: $lastname)){
                            Text("Name")
                        }
                        
                        NavigationLink(destination: Text("Pronoun Selection Page")){
                            Text("Pronouns")
                        }
                        
                        Picker(selection: $languageIndex, label: Text("Preferred Language (Calls)")
                                .accessibilityLabel("Prefered Language for Calls")
                        ) {
                            ForEach(language,id: \.self) {
                                Text("\($0)")
                            }
                        }
                    }
                    
                    Section(header: Text("Account")){
                        NavigationLink(destination: RoleView(userRole: $appUser.userRole)){
                            Text("Change Account Role")
                        }
                    }
                    
                    Section(header: Text("Actions")) {
                        Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                    }
                    Section(header: Text("App Information")) {
                        HStack{
                            Spacer()
                            
                            Text("Version 0.1.0")
                                .accessibilityHidden(true)
                            Spacer()
                        }
//                        Button(action:{
//                            saveUser(appUser)
//                        }){
//                            Text("Save")
//                        }
//                        Button(action:{
//                            tempUser = loadUser()
//                            copyUser(from: tempUser, to: appUser)
//                        }){
//                            Text("Load")
//                        }
//                        NavigationLink(destination: AppInfo())  {
//                            Text("App Info")
//                        }
//                        NavigationLink(destination: FAQs())  {
//                            Text("FAQs")
//                        }
//                        NavigationLink(destination: ContactUs())  {
//                            Text("Contact Us")
//                        }
                    }
                }
                }
                .navigationTitle("My Profile")
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(User(name: ["",""], role: .User))
    }
}
