//
//  AuthService.swift
//  HandM
//
//  Created by Александр Романцов on 14.10.2022.
//

import Foundation

class AuthService : ObservableObject {
    
    static let authService = AuthService()
    
    private var singIn : Bool
    
    init() {
        self.singIn = false
    }
    
    func singIn(login : String, password : String) -> Bool {
        if (login == User.users[0].login && password == User.users[0].password) {
            singIn = true
            return true
        } else {
            singIn = false
            return false
        }
    }
    
}

struct User {
    let login : String?
    let password : String?
}

extension User {
    static var users = [
        User(login: "Alex", password: "qwerty")
    ]
}
