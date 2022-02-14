//
//  HelpUserView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/14/22.
//

import SwiftUI

struct HelpUserView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        Text("Hello, \(appUser.getName(.FirstName))")
    }
}

struct HelpUserView_Previews: PreviewProvider {
    static var previews: some View {
        HelpUserView()
    }
}
