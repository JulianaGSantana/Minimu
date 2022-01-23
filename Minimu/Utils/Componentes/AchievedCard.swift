//
//  SwiftUIView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI



struct AchievedCard: View {
    
    let achieved : Achieved
    @State var blocked: Bool = false
    
    var body: some View {
        VStack{
            VStack{
                VStack {
                    Image("\(achieved.imageName)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 69, height: 90)
                    
                    Text(achieved.title)
                        .font(.title3.bold())
                        .font(.subheadline)
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





struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AchievedCard(achieved: Achieved(id: 0, title: "hola", imageName: "caixa"))
    }
}
