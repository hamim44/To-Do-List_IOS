//
//  ProfileView.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("Profile")
            
        }
        
    }
}

#Preview {
    ProfileView()
}
