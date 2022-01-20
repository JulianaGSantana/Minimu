//
//  Scroll.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
//<<<<<<< Updated upstream
//            LazyHGrid(rows: [GridItem(.fixed(0))], spacing: 20) {
//                ForEach(0...4, id: \.self) { item in
//                    AchievedCard(imageName: "imageTeste", text: "oiiii")
//=======
            LazyHGrid(rows: [GridItem(.fixed(0))], spacing: 25) {
                ForEach(0...5, id: \.self) { item in
                    AchievedCard(imageName: "checkMark", text: "oiiii")
//>>>>>>> Stashed changes
                }
            }
            
        } .frame(height: 220)
        .ignoresSafeArea()
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
