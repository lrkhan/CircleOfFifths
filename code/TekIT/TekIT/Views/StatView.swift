//
//  StatView.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/15/22.
//

import SwiftUI

struct StatView: View {
    @EnvironmentObject var appUser: User
    
    enum type: String {
        case Time = "Time\nVolunteered"
        case People = "Users\nHelped"
    }
    
    let of: type
    
    private let screen = screenData()
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10, style: .circular)
                .foregroundColor(.green)
                .frame(width: screen.screenWidth*0.43, height: screen.screenWidth*0.43)
            
            VStack {
                HStack {
                    Text(of.rawValue)
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                Spacer()
                
                switch of {
                case .Time:
                    Text("\(appUser.minutesHelped/60)h \(appUser.minutesHelped%60)mm")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                case .People:
                    Text("\(appUser.peopleHelped)")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                    
                
                Spacer()
                
            }
            .frame(width: screen.screenWidth*0.38, height: screen.screenWidth*0.38)
        }
    }
}

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
        StatView(of: .Time)
    }
}
