//
//  DataManager.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import SwiftUI

class DataManager {
    static let shared  = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func saveUser(user: User) {
        userData = try?
            JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        guard let user = try?
                JSONDecoder().decode(User.self, from: userData ?? Data()) else
        {
            return User()
        }
        return user
    }
    
    func clear(for userManager: UserManager){
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
         
    }
}
