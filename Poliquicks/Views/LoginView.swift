//
//  LoginView.swift
//  Poliquicks
//
//  Created by Jason Starkman on 1/31/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            Text("Poliquicks")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text("Politics Quick")
                .italic()
            Button{
                
            }
            label:{
                Text("Login")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
