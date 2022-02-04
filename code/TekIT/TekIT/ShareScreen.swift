//
//  ShareScreen.swift
//  TekIT
//
//  Created by Anood Alshehhi on 2/3/22.
//

import SwiftUI

struct ShareScreen: View {
    var body: some View {
        VStack{
            Button {
            //act
            } label: {
               Circle()
                    .fill(Color.blue)
                    .frame(width: 75, height: 75)
                    .overlay(
                    Image(systemName: "rectangle.inset.filled.and.person.filled")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                  )
    }
}
    }
}

struct ShareScreen_Previews: PreviewProvider {
    static var previews: some View {
        ShareScreen()
    }
}
