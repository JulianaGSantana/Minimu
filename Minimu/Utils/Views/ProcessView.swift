//
//  ProcessView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI


struct ProcessView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                VStack(alignment:.leading){
                    
                    Text("Goal")
                        .font(.title.bold())
                      .padding(.leading)
                    
                    Text("Material Minimalism")
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    Text("Wardrobe")
                        .font(.headline)
                        .foregroundColor(Color.secondary)
                        .padding(.leading)

                    Checkmarker()
                        

           Text("Achievements")
                        .font(.title.bold())
                   
                    Text("Achieved")
                        .font(.title3.bold())
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.fixed(0))], spacing: 20) {
                            ForEach(0...4, id: \.self) { item in
                                AchievedCard(imageName: "imageTeste", text: "oiiii")
                            }
                        }
                        
                    } .frame(height: 220)
                    .ignoresSafeArea()
                       
                    Text("Blocked")
                        .font(.title3.bold())
            }.navigationTitle("Process")
            }  .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .background(Color.backgroundColorGrey)
                
    }
    }
}
struct ProcessView_Previews: PreviewProvider {
    static var previews: some View {
        ProcessView()
    }
}
