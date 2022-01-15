//
//  OnboardingButton.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct OnboardingButton: View {
    var body: some View {
        Button(action: {
            UserDefaults.standard.set(true, forKey: "LaunchBefore")
            withAnimation(){
      //          self.viewlaunch.currentPage = "ContentView"
            }
        }){
        Text("Continue")
            .foregroundColor(.white)
            .font(.headline)
            .frame(width: 350, height: 60)
            .background(Color.blue)
            .cornerRadius(15)
            .padding(.top, 50)
    }
}
}

struct OnboardingButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButton()
    }
}
