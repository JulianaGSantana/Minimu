//
//  ContentView.swift
//  Minimu
//
//  Created by Juliana Santana on 12/01/22.
//

import SwiftUI
import CoreData



struct ContentView: View {
 //   @AppStorage("OnboardingStepsView")  var OnboardingStepsViewShowing = true
    @StateObject var onboardingStateFetcher = OnboardingStateFetcher()
    
    var body: some View {
        if onboardingStateFetcher.onboardingState == true {
            
            TabView {
                ClutterView()
                    .tabItem {
                    Image(systemName: "house")
                    Text("Clutter")
                    }
                ProcessView()
                    .tabItem {
                    Image(systemName: "house")
                    Text("Process")
                    }
            }
        } else {
            OnboardingStepsView(onboardingStateFetcher: onboardingStateFetcher)
        }
       
        
//        .sheet(isPresented: $OnboardingStepsViewShowing) {
//            OnboardingStepsView(OnboardingStepsViewShowing: self.$OnboardingStepsViewShowing)
       
    }
    }
    

  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
