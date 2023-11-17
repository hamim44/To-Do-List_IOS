//
//  Loginview.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct Loginview: View {
    @StateObject var viewModel = LoginviewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Do somgthing", angle: 15, background: .blue)
                
                
                //Login From
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                       // .autocorrectionDisabled()
                    
                    TLButton(title: "Login", background: .blue)
                    {
                        viewModel.login()
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

