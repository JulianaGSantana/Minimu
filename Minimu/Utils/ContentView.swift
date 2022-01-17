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
    
    var body: some View {
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
        
//        .sheet(isPresented: $OnboardingStepsViewShowing) {
//            OnboardingStepsView(OnboardingStepsViewShowing: self.$OnboardingStepsViewShowing)
       
    }
    }
    

  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
