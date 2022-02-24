//
//  SearchView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/24/22.
//

import SwiftUI

struct SearchView: View {
    @State var searchBar: String = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.gray)
                .opacity(0.3)
                .frame(width: screenData().screenWidth*0.95, height: screenData().screenHeight * 0.06)
                .padding()
            HStack {
                Image(systemName: "magnifyingglass")
                    
                TextField("Search", text: $searchBar)
                    .frame(width: screenData().screenWidth * 0.8, height: screenData().screenHeight * 0.06)
            }
        }
        .frame(width: screenData().screenWidth, height: screenData().screenHeight * 0.06)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
