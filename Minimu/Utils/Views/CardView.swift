//
//  CardView.swift
//  Minimu
//
//  Created by Juliana Santana on 17/01/22.
//

import SwiftUI

struct CardView: View {
    @State private var selectedNumber = "5"
    
    var body: some View {
        NavigationView {
        VStack{
        Text("How many items did you manage to discard?")
                .font(.title2.bold())
                .frame(width: 350, alignment: .center)
            
           // Form {
                       Section {
                           Picker("Number", selection: $selectedNumber) {
                               ForEach(1...100, id: \.self) {
                                   selectedNumber in Text("\(selectedNumber)")
                               }
                           }
                           .pickerStyle(.wheel)
                       } .frame(width: 200)
                
                .padding()
                .padding()
            Text("\(selectedNumber) items")
          //  }
            
            Spacer()
        OnboardingButton()
        }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
