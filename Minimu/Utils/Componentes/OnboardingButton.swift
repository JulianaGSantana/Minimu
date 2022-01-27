//
//  OnboardingButton.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//
//
//import SwiftUI
//
//struct OnboardingButton: View {
//    let button: String = "Continue"
//    @Binding var selection: Int
//    let onboardings = [Onboarding1View(), Onboarding2View(), Onboarding3View()] as [Any]
//    //  @EnvironmentObject var viewlaunch: ViewLaunch
//    var body: some View {
//        HStack{
//        ForEach(button, id: \.self) {buttonLabel in
//            Button(action: {buttonAction(buttonLabel)}, label: {
//                Text(buttonLabel)
//                .foregroundColor(.white)
//                .font(.headline)
//            
//            })
//        }
//    }   .frame(width: 350, height: 60)
//            .background(Color.blue)
//            .cornerRadius(15)
//            .padding(.top, 50)
//            .padding(.bottom,30)
//}
//    func buttonAction(_ buttonLabel: String) {
//        withAnimation{
//            if buttonLabel == "Continue" && selection < onboardings.count - 1 {
//                selection += 1
//            }
//         }
//    }
//}
//
//
//struct OnboardingButton_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingButton(selection: Binding.constant(0))
//    }
//}
