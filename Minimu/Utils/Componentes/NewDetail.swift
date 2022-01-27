//
//  NewDetail.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct NewDetail: View {
    var image: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(alignment: .center) {
            HStack {
                Image(image)  .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                
                //   .resizable()
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(title).bold()
                    
                    
                    Text(description)
                        .foregroundColor(.secondary)
                    //   .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    
                }
            }.frame(width: 340, height: 100)
        } 
    }
}

struct NewDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewDetail(image: "check", title: "More Personalized", description: "Top Stories picked for you and recommendations from siri.")
            .previewLayout(.sizeThatFits)
            .padding(10)
    }
}
