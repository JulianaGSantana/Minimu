//
//  OnboardingStepsView.swift
//  Minimu
//
//  Created by Juliana Santana on 17/01/22.
//

import SwiftUI

struct OnboardingStepsView: View {
    //    @Binding var OnboardingStepsViewShowing: Bool
    var onboardingStateFetcher = OnboardingStateFetcher()
    
    var body: some View {
        TabView{
            Onboarding1View() .tag(0)
            Onboarding2View() .tag(1)
            Onboarding3View(onboardingStateFetcher: onboardingStateFetcher) .tag(3)
        } .tabViewStyle(.page(indexDisplayMode: .never))
        
    }
    
    
}



struct OnboardingStepsView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepsView()
    }
}
