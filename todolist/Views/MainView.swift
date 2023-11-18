//
//  ContentView.swift
//  todolist
//
//  Created by Abrar Hamim on 15/11/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            TabView {
                ToDoListView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                
            }
           
            
        } else{
            Loginview()
        }
        
    }
}

#Preview {
    MainView()
}
