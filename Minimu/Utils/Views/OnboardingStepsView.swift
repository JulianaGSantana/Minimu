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
//        TabView (selection: $selection)
        TabView (){
            Onboarding1View() .tag(0)
            Onboarding2View(onboardingStateFetcher: onboardingStateFetcher) .tag(1)
          //  Onboarding3View(onboardingStateFetcher: onboardingStateFetcher) .tag(3)
        } .tabViewStyle(.page(indexDisplayMode: .always))
            .background(Color.backgroundColorGrey)
            .onAppear {setupAppearance()}
      
        }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .systemBlue
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.5)
      }
        
    }
    
    
//}
struct OnboardingStepsView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepsView()
    }
}


