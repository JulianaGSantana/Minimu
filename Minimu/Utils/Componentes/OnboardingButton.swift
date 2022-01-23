//
//  OnboardingButton.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//
//
import SwiftUI

struct OnboardingButton: View {
    //  @EnvironmentObject var viewlaunch: ViewLaunch
    var body: some View {
        
        Button(action: {
            //    Button(action: {self.OnboardingStepsViewShowing.toggle()
        }) {
            Text("Continue")
            //  showOnBoarding.toggle()
            
                .foregroundColor(.white)
                .font(.headline)
                .frame(width: 350, height: 60)
                .background(Color.blue)
                .cornerRadius(15)
                .padding(.top, 50)
                .padding(.bottom,30)
        }
    }
}

struct OnboardingButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButton()
    }
}
