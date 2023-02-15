//
//  PoliquicksApp.swift
//  Poliquicks
//
//  Created by Jason Starkman on 1/31/23.
//

import SwiftUI
import FirebaseCore

@main
struct PoliquicksApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    @StateObject var dm = PoliquicksDataModel()
    @StateObject var csManager = ColorSchemeManager()
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(csManager)
                .environmentObject(dm)
                .onAppear{
                    csManager.applyColorScheme()
                }
        }
    }
}
