//
//  HandMApp.swift
//  HandM
//
//  Created by Александр Романцов on 14.10.2022.
//

import SwiftUI

@main
struct HandMApp: App {
    //let persistenceController = PersistenceController.shared
    //var tester = LogInViewModel()
    
    var body: some Scene {
        WindowGroup {
            /*
            LogInView()
                .environmentObject(tester)
             */
            HomeView()
        }
    }
}
