//
//  LaunchScreen.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI
struct Standard: View {
    var body: some View {
        Text("Accessiblity")
        Text("Camera")
        Text("Settings")
        Text("Safari")
        Text("Siri")
        Text("Mail")
        Text("Messages")
        Text("Phone")
        Text("FaceTime")
        Text("Clock")
       
    }
}
    struct OtherApps: View {
        var body: some View {
            Text("FaceBook")
            Text("YouTube")
            Text("Zoom")
            Text("Other Apps")
     
           
        }
}
struct LaunchScreen: View {

    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Standard Apps")) {
                    //Standard()
                    NavigationLink("Accessibility", destination: Text("Accessibility Call") )
                    NavigationLink("Camera", destination:Text("Camera Call"))
                    NavigationLink("Settings", destination: Text("Settings Call"))
                    NavigationLink("Safari", destination: Text("Safari Call"))
                    NavigationLink("Siri", destination: Text("Siri Call") )
                    NavigationLink("Mail", destination: Text("Mail Call"))
                    NavigationLink("Messages", destination: Text("Messages Call"))
                    NavigationLink("Phone", destination: Text("Phone Call"))
                    NavigationLink("Facetime", destination: Text("FaceTime Call"))
                    NavigationLink("Clock", destination: Text("Clock Call") )
                    
                }
               
                Section(header: Text("Other Apps")) {
                    //OtherApps()
                    NavigationLink("FaceBook", destination: Text("FaceBook Call") )
                    NavigationLink("YouTube", destination: Text("YouTube Call"))
                    NavigationLink("Zoom", destination: Text("Zoom Call"))
                    NavigationLink("Other Apps", destination: Text("Other Apps Call") )
                    
                }
              
                
               
                    
                    
                }.navigationTitle("Specific Help ")
               
        }
            }
            
            
        }
        
     
       
    


struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
.previewInterfaceOrientation(.portrait)
    }
}
