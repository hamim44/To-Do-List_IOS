//
//  RegisterView.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {

        VStack{
            HeaderView(title: "Registration", subtitle: "start organizing todos", angle: -15, background: .green)
            
            
            Form{
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green)
                {
                    viewModel.register()
                    
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
