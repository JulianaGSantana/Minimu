//
//  Scroll.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Scroll: View {
    let data = Array(1...5).map {"\($0)"}
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
      
//        ScrollView(.horizontal, showsIndicators: false) {
//
//            LazyHGrid(rows: [GridItem(.fixed(0))], spacing: 25) {
//                ForEach(0...5, id: \.self) { item in
//                    AchievedCard(imageName: "checkMark", text: "oiiii")
//
//                }
//            }
//
//        } //.frame(height: 220)
//        .frame(width: 350, height: 220, alignment: .center)
//        .ignoresSafeArea()
        
        ScrollView{
            LazyVGrid(columns: layout, spacing: 40) {
                ForEach(data, id: \.self) { item in
                AchievedCard(imageName: "check", text: "oiiii")
                }
            }
        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
