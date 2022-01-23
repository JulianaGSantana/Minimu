//
//  Scroll.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct Achieved {
    var id: Int
    let title: String
    let imageName: String
}


struct Scroll: View {
    //  let data = Array(1...5).map {"\($0)"}
    
    let achieveds : [Achieved] = [
        Achieved(id: 0, title: "cndscjdsj", imageName: "check"),
        Achieved(id: 1, title: "cccdj", imageName: "computador"),
        Achieved(id: 2, title: "cdscjdsj", imageName: "cueca"),
        Achieved(id: 3, title: "cndj", imageName: "coracao"),
        Achieved(id: 4, title: "cdscjdsj", imageName: "cueca"),
        Achieved(id: 5, title: "cdscjdsj", imageName: "cueca"),
        Achieved(id: 6, title: "cndscjdsj", imageName: "check"),
        Achieved(id: 7, title: "cccdj", imageName: "computador"),
        Achieved(id: 8, title: "cdscjdsj", imageName: "cueca"),
        Achieved(id: 9, title: "cndj", imageName: "coracao"),
        Achieved(id: 10, title: "cdscjdsj", imageName: "cueca"),
        Achieved(id: 11, title: "cdscjdsj", imageName: "cueca"),
        Achieved(id: 12, title: "cdscjdsj", imageName: "cueca"),
    ]
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @State var blocked: Bool = false
    
    
    var body: some View {
        
        
        ScrollView{
            Spacer()
            LazyVGrid(columns: layout, spacing: 40) {
                ForEach(achieveds, id: \.id) { achieved in
                    AchievedCard(achieved: achieved)
                    
                }
            }
            
            
        }
        
        if blocked{
            AchievedCard(achieved: Achieved(id: 2, title: "teste", imageName: "cueca")).opacity(0.9)
        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}

