//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .foregroundColor(.red)
            .clipShape((Circle))
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
