//
//  SwiftUIView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI



struct AchievedCard: View {
    
    var achieves : Achieved
   // @State var blocked: Bool = false
    @StateObject var modalData = ModalData()
    @StateObject var counterFetcher = CounterFetcher()
    
    var body: some View {
        VStack{
           
            VStack{
                VStack {
                    Image(modalData.achieves[counterFetcher.counter].imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 69, height: 90)

                    Text(self.achieves.title) //achieved.title //self.goals.frase
                        .font(.title3.bold())
                      //  .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .frame(width: 150, height: 200)

            }.background(Color .cardColor)
            //  .shadow(radius: 4)
                .cornerRadius(10)
            //  .opacity(0.5)
        } .shadow(radius: 4)
   }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        AchievedCard(achieved: modalData.achieves[counterFetcher.counter])
//    }
//}
