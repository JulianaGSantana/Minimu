//
//  Onboarding1View.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import Combine
import SwiftUI

struct Onboarding1View: View {
  //  @EnvironmentObject var viewlaunch: ViewLaunch
    var body: some View {
        VStack {
            Spacer()
                Text("Hi!")
                    .fontWeight(.heavy)
                    .font(.system(size: 35))
                    .frame(width: 300, alignment: .center)
        
                
                VStack(alignment: .leading) {
                    NewDetail(image: "heart.fill", imageColor: .pink, title: "Understand minimalism", description: "Being minimalist is a process of reflection.")
                    NewDetail(image: "paperclip", imageColor: .red, title: "Start your detachment process", description: "With small periodic tasks, you'll start to sort out items or actions that don't make you happy.")
                    NewDetail(image: "play.rectangle.fill", imageColor: .blue, title: "Receive notifications", description: "So you never forget to meet the goals  on the chosen days.")
                    NewDetail(image: "play.rectangle.fill", imageColor: .blue, title: "See results", description: "At the end of each stage you will see how many items you managed to let go of.")
            }

            Spacer()
            
            OnboardingButton()
        } .background(Color.backgroundColorGrey)
    }
}


struct Onboarding1View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding1View()
    }
}




