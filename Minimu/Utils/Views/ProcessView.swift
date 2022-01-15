//
//  ProcessView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct ProcessView: View {
    @State var showSheetView = false

    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                VStack(alignment:.leading){
                    
                    Text("Goal")
                        .font(.title.bold())
                      .padding(.leading)
                    
                    HStack{
                    
                    Text("Material Minimalism")
                        .font(.title3.bold())
                        .padding(.leading)
                        
                        Spacer()
                     
                     
                        Button(action: {
                                   self.showSheetView.toggle()
                               }) {
                                   Image(systemName: "info.circle")
                               }.sheet(isPresented: $showSheetView) {
                                   InformationView()
                               } .padding(.trailing)
                            .font(.system(size: 20))
                            
                    
                }
                    Text("Wardrobe")
                        .font(.headline)
                        .foregroundColor(Color.secondary)
                        .padding(.leading)

                    Checkmarker()
                        .ignoresSafeArea()
                        

           Text("Achievements")
                        .font(.title.bold())
                        .padding(.leading)
                   
                    Text("Achieved")
                        .font(.title3.bold())
                        .padding(.leading)
                    Scroll()
                       
                       
                    Text("Blocked")
                        .font(.title3.bold())
                        .padding(.leading)
                    Scroll()
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
