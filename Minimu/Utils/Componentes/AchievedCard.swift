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
    var counterFetcher = CounterFetcher()
    
    var body: some View {
        VStack{
           
            VStack{
                VStack {
                    Image(achieves.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 69, height: 90)

                    Text(self.achieves.title.localized()) //achieved.title //self.goals.frase
                        .font(.headline)
                      //  .font(.subheadline)
                        .foregroundColor(.secondary)
                       
                    
                    Text(self.achieves.text.localized())
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .frame(width: 150, height: 200, alignment: .center)
              //  .frame(idealWidth: 150, maxWidth: .infinity, idealHeight: 200, maxHeight: .infinity, alignment: .center)
              //  .frame(minWidth: 150, idealWidth: 150, maxWidth: .infinity, idealHeight: 200, alignment: .center)
              //  .padding(.leading)
              //  .padding(.trailing)
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
