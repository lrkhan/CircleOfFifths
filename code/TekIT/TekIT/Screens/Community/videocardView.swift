//
//  videocardView.swift
//  TekIT
//
//  Created by Juan Rubio on 2/22/22.
//

import SwiftUI

struct videocardView: View {
    var imageName: String
    var videoTitle: String
    
    var body: some View {
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
            
        
        }
        
    }
}

struct videocardView_Previews: PreviewProvider {
    static var previews: some View {
        videocardView(imageName: "applepaytut", videoTitle: "How to use Apple Pay")
    }
}
