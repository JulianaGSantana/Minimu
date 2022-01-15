//
//  SwiftUIView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct AchievedCard: View {
    var imageName: String
    var text: String
    var body: some View {
        VStack{
            VStack{
        VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 69, height: 90)
            
                    Text(text)
                        .font(.title3.bold())
                    Text("oi")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                
            }
            .frame(width: 150, height: 200)
         
        }.background(Color .cardColor)
          //  .shadow(radius: 4)
            .cornerRadius(10)
        } .shadow(color: .secondary, radius: 2, x: 4, y: 4)
    }
        
    }





struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AchievedCard(imageName: "imageTeste", text: "Teste")
    }
}
