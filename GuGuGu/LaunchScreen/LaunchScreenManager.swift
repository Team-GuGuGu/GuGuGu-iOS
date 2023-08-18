//
//  LaunchScreenManager.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/18/23.
//

import Foundation

enum LaunchScreenCondition {
    case start
    case completed
}

final class LaunchScreenManager: ObservableObject {
    @Published private(set) var state: LaunchScreenCondition = .start
    
    func dismiss() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.state = .completed
        }
    }
    
}
