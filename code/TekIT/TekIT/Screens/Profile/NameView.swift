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
            }
            Section(header: Text("Last Name")){
            TextField("\(appUser.getName(.LastName))", text: $lastName)
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
                saveConfirmation.toggle()
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
