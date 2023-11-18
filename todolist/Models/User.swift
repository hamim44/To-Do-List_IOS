//
//  User.swift
//  todolist
//
//  Created by Abrar Hamim on 16/11/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
