//
//  LoginView.swift
//  Poliquicks
//
//  Created by Jason Starkman on 1/31/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @EnvironmentObject var dm: PoliquicksDataModel
    @State private var email = ""
    @State private var password = ""
    @State private var loginService = FireBaseLogin()
    

    var body: some View {
        if dm.loggedIn {
            HomeView()
        }
        else{
            NavigationView{
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
                    NavigationLink(destination: HomeView().navigationBarBackButtonHidden()) {
                        Text("Continue as Guest")
                    }
                }
                .onAppear{
                    Auth.auth().addStateDidChangeListener { auth, user in
                        dm.loggedIn = user != nil
                    }
                }
            }
            }
        }
    }

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(PoliquicksDataModel())
    }
}
