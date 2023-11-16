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
                HeaderView()
                
                
                //Login From
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button{
                        //attempt log in
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.gray)
                            
                            Text("Log In")
                                .bold()
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    
                }
                
                
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

