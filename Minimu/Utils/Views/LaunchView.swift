//
//  LaunchView.swift
//  Minimu
//
//  Created by Juliana Santana on 17/01/22.
//

import SwiftUI

struct LaunchView: View {
    @EnvironmentObject var viewlaunch: ViewLaunch

    var body: some View {
        VStack {
            if viewlaunch.currentPage == "OnboardingStepsView" {
                OnboardingStepsView()
            } else if viewlaunch.currentPage == "ContentView" {
                ContentView()
            }
        }
    }
}

class ViewLaunch: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "LaunchBefore") {
                currentPage = "OnboardingStepsView"
        } else {
            currentPage = "ContentView"
        }
    }
    @Published var currentPage: String
}
