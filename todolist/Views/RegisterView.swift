//
//  RegisterView.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct RegisterView: View {
    
    var body: some View {
        @State var name = ""
        @State var email = ""
        @State var password = ""
        VStack{
            HeaderView(title: "Registration", subtitle: "start organizing todos", angle: -15, background: .green)
            
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green){
                    
                }
                .padding()
                
            }
            
            .offset(y: -50)
            
            Spacer()
        }
        
        
    }
}

struct RegisterView_Previews: PreviewProvider{
    static var previews: some View{
        RegisterView()
    }
}
