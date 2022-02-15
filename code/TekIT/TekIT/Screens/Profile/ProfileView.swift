//
//  ProfileView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appUser: User
    
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
                Form {
                    
                    Section(header: Text("Personal Information")) {
                        
                        NavigationLink(destination: NameView(firstName: $firstname, lastName: $lastname)){
                            Text("Name")
                        }
                        
                        NavigationLink(destination: Text("s")){
                            Text("Pronouns")
                        }
                        
                        Picker(selection: $languageIndex, label: Text("Language")) {
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
                .navigationTitle("My Profile")
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
