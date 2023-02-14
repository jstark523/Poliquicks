//
//  Global.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/10/23.
//

import UIKit

enum Global {
    static var screenWidth: CGFloat{
        UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: CGFloat{
        UIScreen.main.bounds.size.height
    }
    
    static var minDimension: CGFloat{
        min(screenWidth, screenHeight)
    }
}
