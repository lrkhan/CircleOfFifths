//
//  CallButtonView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/4/22.
//

import SwiftUI

struct CallButtonView: View {
    var isShareScreen: Bool
    
    var body: some View {
        Circle()
            .fill(isShareScreen ? .blue : .red)
            .frame(width: 75, height: 75)
            .overlay(
                Image(systemName: isShareScreen ? "rectangle.inset.filled.and.person.filled" : "phone.down.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .padding()
    }
}

struct CallButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CallButtonView(isShareScreen: true)
            CallButtonView(isShareScreen: false)
        }
    }
}

struct CallButtonView_Previews_Dark: PreviewProvider {
    static var previews: some View {
        HStack {
            CallButtonView(isShareScreen: true)
            CallButtonView(isShareScreen: false)
        }
        .preferredColorScheme(.dark)
    }
}
