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
                    
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Accessibility")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Accessibility")
                        }
                    }
                        //"Accessibility", destination: Text("Accessibility Call") )
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Camera")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Camera")
                        }
                    }
                    //("Camera", destination:Text("Camera Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Settings")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Settings")
                        }
                    }
                    //("Settings", destination: Text("Settings Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Safari")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Safari")
                        }
                    }
                    //("Safari", destination: Text("Safari Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Siri")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Siri")
                        }
                    }
                    //("Siri", destination: Text("Siri Call") )
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Mail")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Mail")
                        }
                    }
                    //("Mail", destination: Text("Mail Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Messages")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Messages")
                        }
                    }
                    //("Messages", destination: Text("Messages Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Phone")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Phone")
                        }
                    }
                    //("Phone", destination: Text("Phone Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Facetime")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Facetime")
                        }
                    }
                    //("Facetime", destination: Text("FaceTime Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Clock")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Clock")
                        }
                    }
                    //("Clock", destination: Text("Clock Call") )
                    

                    
                }
               
                Section(header: Text("Other Apps")) {
                    //OtherApps()
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Facebook")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Facebook")
                        }
                    }
                    //("FaceBook", destination: Text("FaceBook Call") )
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Youtube")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("YouTube")
                        }
                    }
                    //("YouTube", destination: Text("YouTube Call"))
                    NavigationLink {
                        //add something
                    } label: {
                        HStack{
                            Image("Zoom")
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Zoom")
                        }
                    }
                    //("Zoom", destination: Text("Zoom Call"))
                    NavigationLink("Other Apps", destination: Text("Other Apps Call") )
                    
                }
              
                
               
                    
                    
                }.navigationTitle("Select App")
               
        }
            }
            
            
        }
        
     
       
    


struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
.previewInterfaceOrientation(.portrait)
    }
}
