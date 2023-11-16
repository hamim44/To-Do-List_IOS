//
//  todolistApp.swift
//  todolist
//
//  Created by Abrar Hamim on 15/11/23.
//

import FirebaseCore
import SwiftUI

@main
struct todolistApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
