//
//  RegistrationView.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import SwiftUI

struct RegistrationView: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        VStack{
            UsernameTextField(name: $userManager.user.name, nameIsValid: userManager.nameIsValid)
            Button(action: registrateUser){
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Sign in")
                }
            }
            .disabled(!userManager
                        .nameIsValid)
        }
        .padding()
    }
}

extension RegistrationView {
    func registrateUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            DataManager.shared.saveUser(user: userManager.user)
        }
    }
}
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RegistrationView()
            RegistrationView()
        }
    }
}
