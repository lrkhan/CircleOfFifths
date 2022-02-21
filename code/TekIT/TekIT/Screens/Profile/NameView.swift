//
//  NameView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct NameView: View {
    @EnvironmentObject var appUser: User
    
    @State private var saveConfirmation = false
    
    @Binding var firstName: String
    @Binding var lastName: String
    
    var body: some View {
        Form {
            Section(header: Text("First Name")){
                TextField("\(appUser.getName(.FirstName))", text: $firstName)
                    .accessibilityLabel("Text Field for first name")
                    .accessibilityValue("Current Value is: \(appUser.getName(.FirstName).isEmpty ? "blank":appUser.getName(.FirstName))")
            }
            Section(header: Text("Last Name")){
            TextField("\(appUser.getName(.LastName))", text: $lastName)
                    .accessibilityLabel("Text Field for last name")
                    .accessibilityValue("Current Value is: \(appUser.getName(.LastName).isEmpty ? "blank":appUser.getName(.LastName))")
            }
            Button(action: {
                if !firstName.isEmpty {
                    appUser.userName[0] = firstName
                    firstName = ""
                }
                if !lastName.isEmpty {
                    appUser.userName[1] = lastName
                    lastName = ""
                }
                saveUser(appUser)
                saveConfirmation.toggle()
                copyUser(from: loadUser(), to: appUser)
            }) {
                HStack{
                    Spacer()
                    Text("Save")
                    Spacer()
                }
            }
            .alert("Name Saved", isPresented: $saveConfirmation) {
                        Button("OK", role: .cancel) { }
                    }
        }
        .navigationTitle("Name")
        
    }
    
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView(firstName: .constant("test"), lastName: .constant("sdfe"))
            .environmentObject(User(name: ["",""], role: .User))
    }
}
