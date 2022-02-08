//
//  AppInfo.swift
//  TekIT
//
//  Created by Anood Alshehhi on 2/8/22.
//

import SwiftUI

struct AppInfo: View {
    var body: some View {
        NavigationView{
            List(0..<7){row in
                NavigationLink(destination: Text("Detail View row \(row)")) {
        Text ("row\(row)")
                }
        }
            
            .navigationBarTitle(Text("App Info"))
    }
}
}
struct AppInfo_Previews: PreviewProvider {
    static var previews: some View {
        AppInfo()
    }
}
