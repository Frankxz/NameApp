//
//  UsernameTextField.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import SwiftUI

struct UsernameTextField: View {
    @Binding var name: String
    var nameIsValid = false
    var body: some View {
        HStack {
            TextField("Enter your name", text: $name )
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 35)
                .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.blue))
            Text("\(name.count)")
                .foregroundColor(nameIsValid ? .green : .red)
            
        }
    }
}

struct UsernameTextField_Previews: PreviewProvider {
    static var previews: some View {
        UsernameTextField(name: .constant(""))
    }
}
