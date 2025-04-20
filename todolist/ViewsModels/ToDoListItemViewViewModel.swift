//
//  ToDoListItemViewViewModel.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

//viewModel for sigle to do list view(each now in items list)
class ToDoListItemViewViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
