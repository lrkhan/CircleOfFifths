//
//  Help-VolunteerView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct HelpVolunteerView: View {
    @EnvironmentObject var appUser: User
    
    private var welcomeMessage: String {
        "Hello" + (appUser.getName(.FirstName).isEmpty ? "": " \(appUser.getName(.FirstName))")
    }
    
    var body: some View {
        VStack{
            Text(welcomeMessage)
                .fontWeight(.medium)
                .font(.largeTitle)
        ZStack{
        
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 350, height: 175)
                .foregroundColor(.gray)
                
            VStack{
            Image(systemName: "globe.americas")
                .font(.system(size: 100))
                .foregroundColor(.white)
                .padding()
            Text("Helping since")
                .foregroundColor(.white)
                .font(.subheadline)
            }
        }.padding()
            Button( action: {
                print("How to answer a call")
            })  {
                Text("How to answer a call").fontWeight(.bold)
                    .frame(width: 320, height: 50)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.title2)
                    .cornerRadius(10)
            }.padding()
        
            HStack{
                
            ZStack{
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .frame(width: 165, height: 165, alignment: .topLeading)
                .foregroundColor(.green)
                
                Text("Users helped \n                                 5").fontWeight(.bold)
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(width: 125, height: 125)
                
            }
            .padding(5)
                ZStack{
                    RoundedRectangle(cornerRadius: 10, style: .circular)
                        .frame(width: 165, height: 165, alignment: .topLeading)
                        .foregroundColor(.green)
                        
                    Text("Time Volunteered \n              1hr 30min").fontWeight(.bold)
                        .font(.title2)
                            .foregroundColor(.white)
                            .frame(width: 125, height: 125)
                    }
                .padding(5)
            }
        }
    }
}

struct Help_VolunteerView_Previews: PreviewProvider {
    static var previews: some View {
        HelpVolunteerView()
    }
}
