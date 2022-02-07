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
       // ScrollView{
        VStack{
          
            Spacer()
            
            Text("How it works")
                .font(.title2.bold())
                             .font(.system(size: 35))
                             .frame(width: 300, alignment: .center)
                             .padding()
            
            Text("With tasks that can be completed as often as you want, you go through a process of becoming minimalist in the main pillars.\n \n On the main page you will find all the items you have and with each completed task it will disappear!".localized())
//            until your mind is clear and waiting for new challenges. And there are also achievements!
             //   .frame(width: .infinity, alignment: .center)
                .padding()
                .foregroundColor(.secondary)
            
            Image("onboardingImage")
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 230, alignment: .center)
//            Text("Notification frequency")
//                .fontWeight(.heavy)
//                .font(.system(size: 35))
//                .frame(width: 300, alignment: .center)
//                .padding()
//
//            Text("Going minimalist is an ongoing process, so the need for notifications is essential. How often would you like to do this process?")
//
//                .padding()
//
//            Section() {
//                Picker(selection: $selectedFrequency) {
//                    Text("Daily").tag("Daily")
//
//                    Text("Weekly").tag("Weekly")
//                } label: {
//                    Text("Picker")
//                }
//                .pickerStyle(SegmentedPickerStyle())
//            } .padding()
//
//            if (selectedFrequency == "Weekly"){
//                ListDay()
//            }
            
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
                    .padding(.bottom,40)
            }
    
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


