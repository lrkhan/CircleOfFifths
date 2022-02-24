//
//  BackUpView.swift
//  TekIT
//
//  Created by Juan Rubio on 2/22/22.
//

import SwiftUI

struct BackUpView: View {
    var body: some View{
        VStack(alignment: .leading, spacing:10){
            Text("Apple Support")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Divider()
            ScrollView(.horizontal){
                HStack{
            videocardView(imageName: "droid2ios", videoTitle: "How to move from Android to iPhone")
                        .padding()
            videocardView(imageName: "safari", videoTitle: "How to use Safari on iPhone")
                        .padding()
            videocardView(imageName: "applepaytut", videoTitle: "How to use Apple Pay")
                        .padding()
                }
                
            }

            Text("Volunteer Uploads")
                .font(.largeTitle)
                .fontWeight(.bold)
            Divider()
            ScrollView(.horizontal){
                HStack{
            videocardView(imageName: "TekitVol", videoTitle: "How to use TekIT")
                        .padding()
            videocardView(imageName: "TekitVol", videoTitle: "How to use TekIT")
                        .padding()
            videocardView(imageName: "TekitVol", videoTitle: "How to use TekIT")
                        .padding()
                }
            }
    }
        
            
    }
}

struct BackUpView_Previews: PreviewProvider {
    static var previews: some View {
        BackUpView()
    }
}
