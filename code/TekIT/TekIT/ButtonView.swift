//
//  ButtonView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.green)
                .frame(width: 250, height: 40)
            Text("Get Help")
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
