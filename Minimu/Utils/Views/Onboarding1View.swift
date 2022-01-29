//
//  Onboarding1View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import Combine
import SwiftUI

struct Onboarding1View: View {
    @State private var isPresenting = false
  //  @Environment(\.presentationMode) var presentationMode
    var body: some View {
      //  NavigationView{
        GeometryReader { geometry in
            
            VStack {
                Spacer()
                Text("Hi!")
                    .fontWeight(.heavy)
                    .font(.system(size: 35))
                    .frame(width: 300, alignment: .center)
                
                
                VStack(alignment: .leading) {
                    NewDetail(image: "jornal", title: "Understand minimalism", description: "Being minimalist is a process of reflection.")
                    NewDetail(image: "check", title: "Start your detachment process", description: "With small periodic tasks, you'll start to sort out items or actions that don't make you happy.")
//                    NewDetail(image: "mensagem", title: "Receive notifications", description: "So you never forget to meet the goals  on the chosen days.")
                    NewDetail(image: "caixa", title: "See results", description: "At the end of each stage you will see how many items you managed to let go of.")
                }
                .padding(.trailing)
                Spacer()
                
//                NavigationLink(destination: Onboarding2View(), isActive: $isPresenting){ EmptyView()}
//
//                Button(action: {
//                    isPresenting = true
//                }) {
//                    Text("Continue")
//                    //  showOnBoarding.toggle()
//                    
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .frame(width: 350, height: 60)
//                        .background(Color.blue)
//                        .cornerRadius(15)
//                        .padding(.top, 50)
//                        .padding(.bottom,30)
//                }

        
            }  .position(x: geometry.size.width/2,
                         y: geometry.size.height/2)
            
          
        
        }  .background(Color.backgroundColorGrey)
            .ignoresSafeArea()
      //  } .navigationBarHidden(true)
        
      
    }
}
struct Onboarding1View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1View()
    }
}




