//
//  ToDoListViewViewModel.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//
import FirebaseFirestore
import Foundation

//viewModel for sigle to do list view()
//Primaryt tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
