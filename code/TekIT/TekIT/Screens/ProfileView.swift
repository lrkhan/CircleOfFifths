//
//  ProfileView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var birthdate = Date()
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
                    TextField("First Name", text: $firstname)
                    TextField("Last Name", text: $lastname)
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    Picker(selection: $languageIndex, label: Text("Language")) {
                        ForEach(0 ..< language.count) {
                            Text(self.language[$0]).tag($0)
                        }
                      
                    }
                
                    
                
                }
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                }
                Section(header: Text("App Information")) {
                    
                    NavigationLink(destination: Devices())  {
                        Text("Devices")
                }
                
                    
                    NavigationLink(destination: AppProficiencies())  {
                        Text("Proficiencies")
                }
                    
                    NavigationLink(destination: AppInfo())  {
                        Text("App Info")
                }
                    NavigationLink(destination: FAQs())  {
                        Text("FAQs")
                }
                    NavigationLink(destination: ContactUs())  {
                        Text("Contact Us")
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
    }
}


