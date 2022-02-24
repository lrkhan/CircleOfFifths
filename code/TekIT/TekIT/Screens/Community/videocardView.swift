//
//  videocardView.swift
//  TekIT
//
//  Created by Juan Rubio on 2/22/22.
//

import SwiftUI

struct videocardView: View {
    @Environment(\.openURL) var openURL
    
    @State private var showingAlert = false
    
    var imageName: String
    var videoTitle: String
    var link:String = "https://www.apple.com"
    
    var body: some View {
        Button(action:{
            showingAlert = true
        }) {
            VStack(alignment: .leading, spacing: 10){
                Image(imageName)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio( contentMode: .fill)
                    .frame(width: screenData().screenWidth * 0.75, height: screenData().screenHeight * 0.2)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                Text(videoTitle)
                    .foregroundColor(.primary)
                    .font(.body)
                    .frame(width: screenData().screenWidth * 0.75, height: screenData().screenHeight * 0.08, alignment: .topLeading)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
            }
        }
        .alert("You will be taken to an external video.", isPresented: $showingAlert) {
                    Button("Ok") {openURL(URL(string: link)!)}
                    Button("Cancel", role: .destructive) { showingAlert = false}
                }
        
    }
}

struct videocardView_Previews: PreviewProvider {
    static var previews: some View {
        videocardView(imageName: "applepaytut", videoTitle: "How to use Apple Pay")
    }
}
