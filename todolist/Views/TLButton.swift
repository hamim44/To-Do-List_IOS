//
//  TLButton.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action:() -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .bold()
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    TLButton(title: "value", background: .red){
        //action
    }
}
