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
            LazyHGrid(rows: [GridItem(.fixed(0))], spacing: 20) {
                ForEach(0...4, id: \.self) { item in
                    AchievedCard(imageName: "imageTeste", text: "oiiii")
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
