//
//  ToDoListViewViewModel.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import Foundation

//viewModel for sigle to do list view()
//Primaryt tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    init() {}
}
