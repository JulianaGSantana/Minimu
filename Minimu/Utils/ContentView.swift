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
                ProcessView(goals: Goal(id: 0, minType: "Material Minimalism", typesubcategory: "String", frase: "Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.))."))
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
