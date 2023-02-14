//
//  LoginView.swift
//  Poliquicks
//
//  Created by Jason Starkman on 1/31/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var loginService = FireBaseLogin()
    

    var body: some View {
        VStack{
            Text("Poliquicks")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .offset(y:-100)
                .foregroundColor(Color.accentColor)
            Text("Politics Quick")
                .italic()
                .offset(y:-100)
            
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            Button{
                loginService.login(email: email, password: password)
            }
            label:{
                Text("Login")
            }
            Button{
                loginService.register(email: email, password: password)
            }
            label:{
                Text("Sign Up")
            }
            Button{
                
            }
            label:{
                Text("Continue as Guest")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
