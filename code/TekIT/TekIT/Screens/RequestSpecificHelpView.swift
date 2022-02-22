//
//  RequestSpecificHelpView.swift
//  TekIT
//
//  Created by Juan
//

import SwiftUI

struct RequestSpecificHelpView: View {
    @Environment(\.dismiss) var dismiss
    
    let standardApps = ["Accessibility","Camera","Settings","Safari","Siri","Mail","Messages","Phone","Facetime","Clock"]
    
    let otherApps = ["Facebook","Youtube","Zoom"]
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Standard Apps")) {
                    ForEach(standardApps, id: \.self){app in
                        NavigationLink {
                            Text("\(app) Call")
                        } label: {
                            HStack{
                                Image(app)
                                    .resizable()
                                    .frame(width: 32, height: 32)
                                Text(app)
                            }
                        }
                    }
                    
                }
                
                Section(header: Text("External Apps")) {
                    ForEach(otherApps, id: \.self){app in
                        NavigationLink {
                            Text("\(app) Call")
                        } label: {
                            HStack{
                                Image(app)
                                    .resizable()
                                    .frame(width: 32, height: 32)
                                Text(app)
                            }
                        }
                    }
                }
                
                Section(header: Text("Other Apps")) {
                    NavigationLink("Suggest an App", destination: Text("Form for Other App") )
                }
                
            }.navigationTitle("Select App")
            
        }
    }
}

struct RequestSpecificHelpView_Previews: PreviewProvider {
    static var previews: some View {
        RequestSpecificHelpView()
            .environmentObject(User(name: ["",""], role: .User))
    }
}
