//
//  Onboarding2View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Onboarding2View: View {
    var body: some View {
        ZStack{
            Color.backgroundColorGrey .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Does this spark joy?")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    .padding()
                
                
                Text("Are you always running out of money?")
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .trailing)
                    .padding()
                    .padding()
                
                
                Text("Does this item add value to my life?")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    .padding()
                
                
                Text("Minimalism is about thinking and not just getting rid of items")
                    .font(.title2.bold())
                    .frame(width: 350, alignment: .center)
                    .padding()
                    .padding()
                
                
                
                Text("What could I do with the extra space?")
                
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .trailing)
                    .padding()
                    .padding()
                
                Text("How do I use technology and social media?")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .frame(width: 300, alignment: .leading)
                    .padding()
                    .padding()
                
                Spacer()
                
                
                //            Text("How do I use technology and social media?")
                //                .font(.title3.bold())
                //                .frame(width: 350, alignment: .center)
                // OnboardingButton()
                OnboardingButton()
                
            } 
            .background(Color.backgroundColorGrey) .ignoresSafeArea(.all)
            
        }   // .padding()
    }
    
}
struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
