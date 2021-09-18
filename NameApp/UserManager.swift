//
//  UserManager.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
