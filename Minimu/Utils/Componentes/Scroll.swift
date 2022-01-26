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
                    AchievedCard(achieves: archi).opacity(0.6)
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
//if counterFetcher == 3 {
//
//}

