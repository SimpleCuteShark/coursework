//
//  LogInViewModel.swift
//  HandM
//
//  Created by Александр Романцов on 14.10.2022.
//

import SwiftUI

class LogInViewModel : ObservableObject {
    
    @Published var singIn : Bool = false
    
    @Published var log_reg : Bool = false
    
    func userButtonPressed(login: String, password: String) {
        if (AuthService.authService.singIn(login: login, password: password)) {
            singIn = true
        }
    }
    
    func log_regButtonPressed() {
        log_reg = !log_reg
    }
    
}
