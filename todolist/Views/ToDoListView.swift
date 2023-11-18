//
//  ToDoListItemsView.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]

    init(userId: String) {
       self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        
    }
    var body: some View {
        NavigationView {
            VStack{
                List(items) { item in
                    ToDoListItemView(item: item)
                    
                }
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}


#Preview {
    ToDoListView(userId: "nXbzUiGv7qThzqvzbaNdINJR28b2")
}
