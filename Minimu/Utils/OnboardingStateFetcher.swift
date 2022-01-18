//
//  OnboardingStateFetcher.swift
//  Minimu
//
//  Created by Juliana Santana on 18/01/22.
//

import Foundation

class OnboardingStateFetcher: ObservableObject {
    @Published var onboardingState: Bool = false
    
    internal func changingOnboardingState() {
        onboardingState = true
    }
}




