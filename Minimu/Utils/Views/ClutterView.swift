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
     var counterFetcher = CounterFetcher()
  
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
              
                if counterFetcher.counter >= 36 {
                    
                    Image("cerebro")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 210, height: 150, alignment: .center)
                        .padding(.top, 300)
                    
                } else {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(goals, id: \.self) { goa in
                        
                        if counterFetcher.counter >= goa.id{
                            Image("\(goa.clutterImage)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                             //   .background(.green)
                                .opacity(0.0)
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
            } .background(Color.backgroundColorGrey)
        }
}


            


struct ClutterView_Previews: PreviewProvider {
    static var previews: some View {
        ClutterView()

    }
}



