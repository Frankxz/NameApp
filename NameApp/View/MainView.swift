//
//  MainView.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var userManager: UserManager
    @StateObject var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hello, \(userManager.user.name) !")
                .font(.largeTitle)
                .padding()
            CounterView(text: "\(timer.counter)")
                .padding()
            
            Spacer()
            
            VStack{
                
                ButtonView(title: timer.buttonTitle, color: .green) {
                    timer.start()
                }
                Spacer()
                ButtonView(title: "LogOut", color: .blue) {
                    DataManager.shared.clear(for: userManager)
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(UserManager())
    }
}
