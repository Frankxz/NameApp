//
//  CounterView.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import SwiftUI

struct CounterView: View {
    var text = ""
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
            Text("\(text)")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
