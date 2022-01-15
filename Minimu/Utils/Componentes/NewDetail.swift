//
//  NewDetail.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct NewDetail: View {
    var image: String
    var imageColor: Color
    var title: String
    var description: String

    var body: some View {
        HStack(alignment: .center) {
            HStack {
                Image(systemName: image)
                    .font(.system(size: 50))
                    .frame(width: 50)
                    .foregroundColor(imageColor)
                    .padding()

                VStack(alignment: .leading) {
                    Text(title).bold()
                
                    Text(description)
                     //   .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }.frame(width: 340, height: 100)
        }
    }
}


struct NewDetail_Previews: PreviewProvider {
    static var previews: some View {
        NewDetail(image: "heart.fill", imageColor: .pink, title: "More Personalized", description: "Top Stories picked for you and recommendations from siri.")
        .previewLayout(.sizeThatFits)
        .padding(10)
    }
}
