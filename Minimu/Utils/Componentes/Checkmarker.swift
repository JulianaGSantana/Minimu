//
//  Checkmarker.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct Checkmarker: View {
    @State var selected = false
    
    var goals: [String] = ["oi","tp"]
    
    var body: some View {
        VStack{
    VStack {
                  HStack{
                      ZStack{
                          Circle()
                              .stroke(selected ? Color("blue"): Color.red, lineWidth: 2)
                              .frame(width: 25, height: 25, alignment: .center)
                          
                          if selected{
                              Image(systemName: "checkmark.circle.fill")
                                  .font(.system(size: 25))
                                  .foregroundColor(.blue)
                                 
                          }
                      } .padding()
                          .onAppear {
                              if selected{
                                  let currentCounter = UserDefaults().integer(forKey: "Counter")
                                  let newCounter = currentCounter + 1
                                  UserDefaults().set(newCounter, forKey: "Counter")
                              }
                          }
                      
                      Text("cdscdscdscdscdfvdfvdfvfvfdvfdvfdvfvfffvfvfvfvfv")
                      
                  }.padding(.horizontal)
            .padding(.bottom, 20)
            .padding(.top, 20)
          //  .contentShape(Checkmarker())
            .onTapGesture(perform: {
                selected.toggle()
            })
              }
        }  .background(Color .cardColor)
            .cornerRadius(13)
          
            .shadow(radius: 4)
            .padding()
    }
}
struct Checkmarker_Previews: PreviewProvider {
    static var previews: some View {
        Checkmarker()
    }
}
