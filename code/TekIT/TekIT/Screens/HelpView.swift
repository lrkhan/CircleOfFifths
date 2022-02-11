//
//  HelpView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/7/22.
//

import SwiftUI

struct HelpView: View {
    @EnvironmentObject var appUser: User
    
    var body: some View {
        Text("Hello \(appUser.getName(.Both))")
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
