//
//  InformationCard.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct InformationCard: View {
    var inf: String
    var body: some View {
        VStack{
    VStack {
                  HStack{
                     
                  } .padding(.trailing)
            .padding(.leading)
                      
                      Text(inf)
                  }.padding(.horizontal)
            .padding(.bottom, 20)
            .padding(.top, 20)
              }
          .background(Color .cardColor)
            .cornerRadius(13)
           
   //   .padding(.bottom, 20)
   //   .padding(.top, 20)
          
            .shadow(radius: 4)
            .padding()
    }
}


struct InformationCard_Previews: PreviewProvider {
    static var previews: some View {
        InformationCard(inf: "ncjcd")
    }
}
