//
//  Loginview.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct Loginview: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Do somgthing", angle: 15, background: .blue)
                
                
                //Login From
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                       // .autocorrectionDisabled()
                    
                    TLButton(title: "Login", background: .gray){
                        
                    }
                    .padding()
                    
                }
                .offset(y:-50)
                
                //Create Account
                VStack{
                    Text("New around hare?")
                   NavigationLink("Create an Account", destination:RegisterView())
                }
                .padding(.bottom,50)
                Spacer()
                
                
            }
        }

    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        Loginview()
    }
}

