//
//  ProfileUser.swift
//  TekIT
//
//  Created by Anood Alshehhi on 2/9/22.
//

import SwiftUI

struct ProfileUser: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var birthdate = Date()
    @State private var languageIndex = 0
    var language = ["English", "Spanish", "Cantonese", "Arabic", "German", "Russian", "Korean"]
    @State private var devices = 1
     @State private var prefrences = 1

    
    
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
                Section(header: Text("App Information")) {
                    
                    NavigationLink(destination: Devices())  {
                        Text("Device")
                }
                

                    Picker(selection: $prefrences, label: Text("Prefrences")) {
                        Text("iphone1").tag(1)
                        Text("iphone2").tag(2)
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

            }
            }
        }
    }

                

struct ProfileUser_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUser()
    }
}
