//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                
            Text("Hello, world!")
                .foregroundColor(.orange)
        }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
