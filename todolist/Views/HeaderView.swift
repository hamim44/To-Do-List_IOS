//
//  HeaderView.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.blue)
                .rotationEffect(Angle(degrees: 15))
                
            
            VStack{
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Make Life Sample")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
            }
            .padding(.top,35)
        }
        .frame(width: UIScreen.main.bounds.width * 3,height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
