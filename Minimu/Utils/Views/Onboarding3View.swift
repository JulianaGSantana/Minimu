//
//  Onboarding3View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Onboarding3View: View {
    var onboardingStateFetcher = OnboardingStateFetcher()
    @State private var selectedFrequency: String = "Daily"
    
    
    var body: some View {
        
        VStack{
            //       Spacer()
            Spacer()
            Text("Notification frequency")
                .fontWeight(.heavy)
                .font(.system(size: 35))
                .frame(width: 300, alignment: .center)
                .padding()
            
            //                Text("To start this journey, we will start by minimizing material items, so that we can then explore other areas.")
            //                //   .frame(width: 350, alignment: .leading)
            //                    .padding()
            Text("Going minimalist is an ongoing process, so the need for notifications is essential. How often would you like to do this process?")
            //   .frame(width: 350, alignment: .leading)
                .padding()
            
            Section() {
                Picker(selection: $selectedFrequency) {
                    Text("Daily").tag("Daily")
                    
                    Text("Weekly").tag("Weekly")
                } label: {
                    Text("Picker")
                }
                .pickerStyle(SegmentedPickerStyle())
            } .padding()
            //      }
            if (selectedFrequency == "Weekly"){
                ListDay()
            }
            
            Spacer()
            Button(action: {
                changeOnboardingState()
            }) {
                Text("Continue")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(width: 350, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15)
                //  .padding(.top, 0)
                    .padding(.bottom,30)
            }
            
            //Button(action: {self.OnboardingStepsView.toggle()
            
            //  })
            
        }  .background(Color.backgroundColorGrey) .ignoresSafeArea()
        
        
        
    }
    
    func changeOnboardingState() {
        self.onboardingStateFetcher.changingOnboardingState()
    }
    
}
struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}


