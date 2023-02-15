//
//  PoliquicksDataModel.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/13/23.
//

import SwiftUI

class PoliquicksDataModel:ObservableObject{
    @Published var userZip = "12203"
    @Published var toastText: String?
    @Published var repUrl = ""
    @Published var loggedIn = false
    
    init(){
        repUrl = "https://" + EnvSetup.repBaseUrl + EnvSetup.repApiKey + "&address=" + userZip
    }
    
    func verifyZip(zip: String){
        NSPredicate(format: "SELF MATCHES %@", "^\\d{5}$")
            .evaluate(with: zip) ? setZip(zip: zip) : showToast(text: "Invalid Zip")
    }
    
    func setZip(zip: String){
        userZip = zip
        repUrl = "https://" + EnvSetup.repBaseUrl + EnvSetup.repApiKey + "&address=" + userZip
    }
    
    func showToast(text: String?){
        withAnimation{
            toastText = text
        }
        withAnimation(Animation.linear(duration: 0.2).delay(3)){
            toastText = nil

        }
    }
}
