//
//  Scroll.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

//var achieves:
//struct Achieved {
//    var id: Int
//    let title: String
//    let imageName: String
//}
struct Scroll: View {
    //  let data = Array(1...5).map {"\($0)"}
    
//    let achieveds : [Achieved] = [
//        Achieved(id: 0, title: "cndscjdsj", imageName: "check"),
//        Achieved(id: 1, title: "cccdj", imageName: "computador"),
//        Achieved(id: 2, title: "cdscjdsj", imageName: "cueca"),
//        Achieved(id: 3, title: "cndj", imageName: "coracao"),
//        Achieved(id: 4, title: "cdscjdsj", imageName: "cueca"),
//        Achieved(id: 5, title: "cdscjdsj", imageName: "cueca"),
//        Achieved(id: 6, title: "cndscjdsj", imageName: "check"),
//        Achieved(id: 7, title: "cccdj", imageName: "computador"),
//        Achieved(id: 8, title: "cdscjdsj", imageName: "cueca"),
//        Achieved(id: 9, title: "cndj", imageName: "coracao"),
//        Achieved(id: 10, title: "cdscjdsj", imageName: "cueca"),
//        Achieved(id: 11, title: "cdscjdsj", imageName: "cueca"),
//        Achieved(id: 12, title: "cdscjdsj", imageName: "cueca"),
//    ]
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
  //  @State var blocked: Bool = false
    var achieves:[Achieved] {
            @State var data: [Achieved] = modalData.achieves
                    return data
            }
    @StateObject var modalData = ModalData()
    @StateObject var counterFetcher = CounterFetcher()
  
 //   var counterFetcher : CounterFetcher
    var body: some View {
        ScrollView{
            Spacer()
            //aquiiii
            LazyVGrid(columns: layout, spacing: 40) {
                ForEach(achieves, id: \.self) { archi in
                    AchievedCard(achieves: archi).opacity(0.5)
                }
            }
            
//            ForEach(achieves, id: \.self) { item in
//                Image("\(item.imageName)")
        }
        
//        { item in
//            Image("\(item.imageName)")
//        if counterFetche.self == 3 {
//           AchievedCard(achieved: Achieved(id: 2, title: "teste", imageName: "cueca"))
//        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
//if counterFetcher == 3 {
//
//}

