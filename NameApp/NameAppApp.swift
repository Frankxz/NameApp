//
//  NameAppApp.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import SwiftUI

@main
struct NameAppApp: App {
    private let user = DataManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
