//
//  Checkmarker.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct Checkmarker: View {
    var body: some View {
        VStack{
    VStack {
                  HStack{
                      ZStack{
                          Circle()
                              .stroke(Color.gray, lineWidth: 2)
                              .frame(width: 25, height: 25, alignment: .center)
                      } .padding()
                      
                      Text("socorro dscndjcndjcbdscbbchsjcbxzcbzhzhxzbchzxbchxzhxbcxhzbhxbcxhzbxhbxhbxhbhxzbnnhg")
                  }.padding(.horizontal)
            .padding(.bottom, 20)
            .padding(.top, 20)
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
