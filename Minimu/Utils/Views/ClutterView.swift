//
//  ClutterView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

//struct Achieve: Hashable {
    
   
   // var id: Int
 //   let imageName: String
//}

struct ClutterView: View {
   // var goals: Goal
   
    var goals:[Goal] {
            @State var data: [Goal] = modalData.goals
                    return data
            }
    @StateObject var modalData = ModalData()
    @StateObject var counterFetcher = CounterFetcher()
  
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

        var body: some View {
            ScrollView {
                Spacer()
                Spacer()
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(goals, id: \.self) { goa in
                        if counterFetcher.counter >= goa.id{
                            Image("\(goa.clutterImage)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                //.opacity(0)
                        } else {
                        Image("\(goa.clutterImage)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                          //  .opacity(0)
                        }
                    }
                }
              
            }
        }
}
                    
//                        ForEach(achieves, id: \.self) {  in
//                            Image("\(item.imageName)")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 60, height: 60)
//                        
//                    }
//                }
//                .padding(.horizontal)
 
//          
        
            
      
//    

            


struct ClutterView_Previews: PreviewProvider {
    static var previews: some View {
        ClutterView()

    }
}



//  let data = (1...100).map { "Item \($0)" }
//    let achieves : [Achieve] = [
//        Achieve(id: 0, imageName: "check"),
//        Achieve(id: 1, imageName: "computador"),
//        Achieve(id: 2, imageName: "cueca"),
//        Achieve(id: 3, imageName: "coracao"),
//        Achieve(id: 4, imageName: "cueca"),
//        Achieve(id: 5, imageName: "cueca"),
//        Achieve(id: 6, imageName: "check"),
//        Achieve(id: 7, imageName: "computador"),
//        Achieve(id: 8, imageName: "check"),
//        Achieve(id: 9, imageName: "computador"),
//        Achieve(id: 10, imageName: "cueca"),
//        Achieve(id: 11, imageName: "coracao"),
//        Achieve(id: 12, imageName: "cueca"),
//        Achieve(id: 13, imageName: "cueca"),
//        Achieve(id: 14, imageName: "check"),
//        Achieve(id: 15, imageName: "computador"),
//        Achieve(id: 16, imageName: "check"),
//        Achieve(id: 17, imageName: "computador"),
//        Achieve(id: 18, imageName: "cueca"),
//        Achieve(id: 19, imageName: "coracao"),
//        Achieve(id: 20, imageName: "cueca"),
//        Achieve(id: 21, imageName: "cueca"),
//        Achieve(id: 22, imageName: "check"),
//        Achieve(id: 23, imageName: "check"),
//        Achieve(id: 24, imageName: "computador"),
//        Achieve(id: 25, imageName: "cueca"),
//        Achieve(id: 26, imageName: "coracao"),
//        Achieve(id: 27, imageName: "cueca"),
//        Achieve(id: 28, imageName: "cueca"),
//        Achieve(id: 29, imageName: "check"),
//        Achieve(id: 30, imageName: "computador"),
//        Achieve(id: 31, imageName: "cueca"),
//        Achieve(id: 32, imageName: "coracao"),
//        Achieve(id: 23, imageName: "cueca"),
//        Achieve(id: 34, imageName: "cueca"),
//        Achieve(id: 35, imageName: "check")
//
//    ]
  
