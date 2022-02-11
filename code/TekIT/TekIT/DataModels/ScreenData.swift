//
//  ScreenData.swift
//  TekIT
//
//  Created by Luthfor Khan on 2/11/22.
//

import Foundation
import SwiftUI

struct screenData {
    // screen dimentions
    let screenSize: CGRect = UIScreen.main.bounds
    var screenWidth: CGFloat { screenSize.width }
    var screenHeight: CGFloat { screenSize.height }
    
    // button dimentions
    var buttonWidth: CGFloat { screenWidth * 0.85 }
    var buttonHeightLarge: CGFloat { screenHeight * 0.50 }
    var buttonHeightSmall: CGFloat { screenHeight * 0.1 }
    
    // button dimentions for the apple id
    var buttonHeightApple: CGFloat { screenHeight * 0.07 }
}
