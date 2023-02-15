//
//  FireBaseLogin.swift
//  Poliquicks
//
//  Created by Jason Starkman on 2/14/23.
//

import Foundation
import Firebase

public class FireBaseLogin{
    
    func register(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password){ result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    func login(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
}
