//
//  Onboarding2View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Onboarding2View: View {
  @State private var isPresenting = false
    var onboardingStateFetcher = OnboardingStateFetcher()
//    @Binding var showSheetView: Bool
 //   @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
          //  Color.backgroundColorGrey .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Text("Does this spark joy?")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    .padding()
                    .padding(.leading,30)
                
                
                Text("Are you always running out of money?")
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .trailing)
                    .padding()
                    .padding()
                    .padding(.trailing,30)
                
                
                Text("Does this item add value to my life?")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .leading)
                    .padding()
                    .padding()
                    .padding(.leading,30)
                
                
                Text("Minimalism is about thinking and not just getting rid of items")
                    .font(.title2.bold())
                   // .frame(alignment: .center)
                    //.padding()
                    //.padding()
                    .padding(.trailing)
                    .padding(.leading)
                
                
                
                Text("What could I do with the extra space?")
                
                    .foregroundColor(.secondary)
                    .frame(width: 350, alignment: .trailing)
                    .padding()
                    .padding()
                    .padding(.trailing,30)
                
                Text("How do I use technology and social media?")
                    .font(.body)
                    .foregroundColor(.secondary)
                    //.frame(width: 300, alignment: .leading)
                    .padding()
                    .padding(.trailing)
                   
                
                Spacer()
                
                Spacer()
//                Button(action: {
//                    changeOnboardingState()
//                }) {
//                    Text("Continue")
//                        .foregroundColor(.white)
//                        .font(.headline)
//                        .frame(width: 350, height: 60)
//                        .background(Color.blue)
//                        .cornerRadius(15)
//                    //  .padding(.top, 0)
//                        .padding(.bottom,40)
//                }
        
            }  .background(Color.backgroundColorGrey) .ignoresSafeArea()
         
                
             //   NavigationLink(destination: Onboarding3View(), isActive: $isPresenting){ EmptyView()}
                
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
                
            } 
            .background(Color.backgroundColorGrey)
            .ignoresSafeArea(.all)
           
        
    //     .navigationBarHidden(true)
           //     .navigationBarBackButtonHidden(true)
    
        }   // .padding()
 //   }
    
//    func changeOnboardingState() {
//        self.onboardingStateFetcher.changingOnboardingState()
//    }
    
}
struct Onboarding2View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2View()
    }
}
