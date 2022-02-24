//
//  BackUpView.swift
//  TekIT
//
//  Created by Juan Rubio on 2/22/22.
//

import SwiftUI

struct BackUpView: View {
    var body: some View{
        VStack {
            SearchView()
                .padding()
            ScrollView {
                VStack(alignment: .leading, spacing:10){
                    Text("Apple Support")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    Divider()
                    
                    ScrollView(.horizontal){
                        HStack{
                            videocardView(imageName: "droid2ios", videoTitle: "How to move from Android to iPhone", link: "https://youtu.be/8GDkLsR1ErI")
                                .padding()
                            videocardView(imageName: "safari", videoTitle: "How to use Safari on iPhone", link: "https://youtu.be/30tfnCxLWSg")
                                .padding()
                            videocardView(imageName: "applepaytut", videoTitle: "How to use Apple Pay", link: "https://youtu.be/uDQKTPuC0oA")
                                .padding()
                        }
                        .padding()
                    }
                    
                    Text("Volunteer Uploads")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
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
                        .padding()
                    }
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
