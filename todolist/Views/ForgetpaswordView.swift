//
//  ForgetpaswordView.swift
//  todolist
//
//  Created by Abrar Hamim on 11/12/23.
//

import SwiftUI

struct ForgetpaswordView: View {
    var body: some View {
        VStack{
            HeaderView(title: "Forget Password", subtitle: "Reset your password", angle: 15, background: .orange)
            
                Form{
                    TextField("Email Address", text: .constant(""))
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    TLButton(title: "Reset Password", background: .blue)
                    {
                    print("Reset Password")
                    }
                    .padding()
                    
                }
        }
    }
}

#Preview {
    ForgetpaswordView()
}
