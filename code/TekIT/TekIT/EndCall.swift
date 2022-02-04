//
//  EndCall.swift
//  TekIT
//
//  Created by Anood Alshehhi on 2/3/22.
//

import SwiftUI

struct EndCall: View {
    var body: some View {
        VStack{
            Button {
            //act
            } label: {
               Circle()
                    .fill(Color.red)
                    .frame(width: 75, height: 75)
                    .overlay(
                    Image(systemName: "phone.down.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                  )
    }
}
    }
}

struct EndCall_Previews: PreviewProvider {
    static var previews: some View {
        EndCall()
    }
}
