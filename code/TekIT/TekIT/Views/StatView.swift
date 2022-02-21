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
                        .font(.headline)
                        .foregroundColor(.white)
                        .accessibilityValue(dataMessage(for: of))
                    
                    Spacer()
                }
                
                Spacer()
                
                switch of {
                case .Time:
                    Text("\(appUser.minutesHelped/60)h \(appUser.minutesHelped%60)mm")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.white)
                        .fixedSize(horizontal: false, vertical: true)
                        .accessibilityHidden(true)
                case .People:
                    Text("\(appUser.peopleHelped)")
                        .fontWeight(.heavy)
                        .font(.title)
                        .foregroundColor(.white)
                        .accessibilityHidden(true)
                }
                    
                
                Spacer()
                
            }
            .frame(width: screen.screenWidth*0.38, height: screen.screenWidth*0.38)
        }
    }
    
    func dataMessage(for dataType: type) -> String {
        switch dataType {
        case .Time:
            return "\(appUser.minutesHelped/60) hours and  \(appUser.minutesHelped%60) minutes"
        case .People:
            return "\(appUser.peopleHelped) people helped"
        }
    }
}

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
        StatView(of: .Time)
    }
}
