//
//  FructusAppApp.swift
//  FructusApp
//
//  Created by Rafael Carvalho on 30/01/23.
//

import SwiftUI

@main
struct FructusAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
