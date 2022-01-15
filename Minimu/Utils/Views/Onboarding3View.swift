//
//  Onboarding3View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Onboarding3View: View {
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Text("Frequency")
                .fontWeight(.heavy)
                .font(.system(size: 35))
                .frame(width: 300, alignment: .center)
                .padding()
            
            Text("To start this journey, we will start by minimizing material items, so that we can then explore other areas.")
                .frame(width: 350, alignment: .leading)
            Text("Going minimalist is an ongoing process, so the need for notifications is essential. How often would you like to do this process?")
                .frame(width: 350, alignment: .leading)
                
            
            List {
                NavigationLink(destination: ProcessView()) {
                HStack{
                    Text("Frequency")
                        .foregroundColor(.primary)
                }
                    
                }
                
            }  .background(Color.backgroundColorGrey)
            Text("Event will occur every day.")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .ignoresSafeArea()
                .frame(width: 300, alignment: .leading)
            
           
           
           
            Spacer()
            OnboardingButton()
        } .background(Color.backgroundColorGrey)
    }
}

struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}
