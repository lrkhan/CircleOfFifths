//
//  ContentView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            BigButtonView(isLargeButton: true, buttonColor: .blue, buttonText: "Get Help")
            BigButtonView(isLargeButton: false, buttonColor: .green, buttonText: "Get Started")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
