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
    @State private var devices = ""
    @State private var prefrences = ""

    var body: some View {
        VStack {
            NavigationView {
            Form {
                
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstname)
                    TextField("Last Name", text: $lastname)
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    
                
                }
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                }
                Section(header: Text("App Information")) {
                    List(0..<7){row in
                        NavigationLink(destination: Text("App info \(row)")) {
                Text ("row\(row)")
                            
                        }
                }
                    
                    
                }
                
            }
            .navigationTitle("My Profile")
            }
        }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
}
