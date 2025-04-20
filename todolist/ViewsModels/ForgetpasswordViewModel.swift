//
//  ForgetpasswordViewModel.swift
//  todolist
//
//  Created by Abrar Hamim on 11/12/23.
//

import FirebaseAuth
import Foundation
import FirebaseAuth

class ForgetpasswordViewModel: ObservableObject{
    @Published var email = ""
    
    init(){}
    
    func resetPassword() {
        guard validate() else {
            return
        }
        
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                print("Error sending password reset email", error.localizedDescription)
            } else {
                print("Password reset email sent successfully")
            }
        }
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard email.contains("@") && email.contains(".")  else{
            return false
        }
        return true
    }
}
