//
//  GuGuGuApp.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/17/23.
//

import SwiftUI

@main
struct GuGuGuApp: App {
    
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                MainView()
                
                if launchScreenManager.state != .completed {
                    LaunchScreenView()  
                        .onAppear {
                            launchScreenManager.dismiss()
                        }
                }
                
            }
            .environmentObject(launchScreenManager)
        }
    }
}
