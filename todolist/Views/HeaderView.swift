//
//  HeaderView.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var subtitle: String
    var angle: Double
    var background: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
            }
            .padding(.top,80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
