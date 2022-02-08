//
//  LaunchScreen.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct LaunchScreen: View {
    let specificHelp = Bundle.main.decode([helpSection].self, from: "menu.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(specificHelp){ Section in
                    Text("Specific Help")
                    Text("Specific Help")
                    Text("Specific Help")
                    Text("Specific Help")
                    Text("Specific Help")
                    Text("Specific Help")
                    Text("Specific Help")
                    Text("Specific Help")
                }
               
                
            }.navigationTitle("Request Specific Help ")
            
            
        }
        
     
       
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
.previewInterfaceOrientation(.portrait)
    }
}
