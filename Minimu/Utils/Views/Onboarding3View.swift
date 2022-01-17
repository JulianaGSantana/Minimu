//
//  Onboarding3View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Onboarding3View: View {
    
    @State private var selectedFrequency = "Daily"
    let frequency = ["Daily", "Weekly"]
    
    var body: some View {
        NavigationView{
        VStack{
            Spacer()
            Spacer()
            Text("Frequency")
                .fontWeight(.heavy)
                .font(.system(size: 35))
                .frame(width: 300, alignment: .center)
                .padding()
            
            Text("To start this journey, we will start by minimizing material items, so that we can then explore other areas.")
             //   .frame(width: 350, alignment: .leading)
                .padding()
            Text("Going minimalist is an ongoing process, so the need for notifications is essential. How often would you like to do this process?")
             //   .frame(width: 350, alignment: .leading)
                .padding()
                
            
            List {
                
                HStack{
                    Text("Frequency")
                        .foregroundColor(.primary)
                    Section {
                        Picker("Number", selection: $selectedFrequency) {
                            ForEach(frequency, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.wheel)
                        
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
      
    }
    }
    }
}
struct Onboarding3View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3View()
    }
}
