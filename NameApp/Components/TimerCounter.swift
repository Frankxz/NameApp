//
//  TimerCounter.swift
//  NameApp
//
//  Created by Robert Miller on 18.09.2021.
//

import Combine
import Foundation

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 5
    var timer: Timer?
    var buttonTitle = "Start"
    
    func start() -> Void {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(update),
                userInfo: nil,
                repeats: true)
        }
        buttonPressed()
    }
    
    private func buttonPressed() {
        if buttonTitle == "Reset" {
            counter = 5
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        
        objectWillChange.send(self)
    }
    
    @objc private func update() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
}
