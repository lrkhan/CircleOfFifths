//
//  ButtonView.swift
//  TekIT
//
//  Created by Anood Alshehhi on 2/3/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack{
            Button {
            //act
            } label: {

                //UI
                Text("Need Help!")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.title)
                
                
            }
    }
     
            Button {
            //act
            } label: {
                //UI
                Text("Volunteer to Help")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.title)
                
                
         }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
