//
//  ColorSchemeManager.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/7/23.
//

import SwiftUI

enum ColorScheme: Int{
    case unspecified, light, dark
}

class ColorSchemeManager: ObservableObject{
    @AppStorage("ColorScheme") var colorScheme: ColorScheme = .unspecified{
        didSet{
            applyColorScheme()
        }
    }
    
    func applyColorScheme(){
        UIWindow.key?.overrideUserInterfaceStyle = UIUserInterfaceStyle(rawValue: colorScheme.rawValue)!
    }
}

