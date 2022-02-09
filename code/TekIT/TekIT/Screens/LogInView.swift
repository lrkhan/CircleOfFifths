//
//  LogInView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/8/22.
//

import SwiftUI

struct LogInView: View {
    
    struct ContentView: View {
        @State private var name: String = ""
        @State private var password: String = ""
        let verticalPaddingForForm = 40.0
        var body: some View {
            ZStack {
                
                VStack(spacing: CGFloat(verticalPaddingForForm)) {
                    Text("Welcome To TeckIT")
                        .font(.title)
                        .foregroundColor(Color.black)
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.secondary)
                        TextField("Enter your name", text: $name)
                            .foregroundColor(Color.black)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    HStack {
                        Image("icons8-key-50")
                            .resizable()
                            .frame(width: 16.0, height: 16.0) .foregroundColor(.secondary)
                        SecureField("Enter password", text: $password)
                            .foregroundColor(Color.black)
                        
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Sign Up")
                            .padding()
                        
                    }
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    
                }.padding(.horizontal, CGFloat(verticalPaddingForForm))
                
                struct ContentView: View {
                               var body: some View {
                                   SignInWithAppleButton(.signIn, onRequest: configure, onCompletion:handle)
                                       .frame(height:45)
                                       .padding()
                               }
                               }
            }
        };
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
