//
//  OnboardingStateFetcher.swift
//  Minimu
//
//  Created by Juliana Santana on 18/01/22.
//

import Foundation

class OnboardingStateFetcher: ObservableObject {
    @Published var onboardingState: Bool = false
    init(){
        if UserDefaults().bool(forKey: "State") {
            onboardingState = true
        } else {
            onboardingState = false
        }
    }
    
    
    internal func changingOnboardingState() {
        onboardingState = true
        UserDefaults().set(true, forKey: "State")
    }
    
}




