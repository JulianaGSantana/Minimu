//
//  ProcessView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct ProcessView: View {
    @State var showSheetView = false
    var goals: Goal
    
    
    @State var showSheet: Bool = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                VStack(alignment:.leading){
                    
                    Text("Goal")
                        .font(.title.bold())
                        .padding(.leading)
                    
                    HStack{
                        
                        Text(self.goals.minType)
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
                    Text(self.goals.typesubcategory)
                        .font(.headline)
                        .foregroundColor(Color.secondary)
                        .padding(.leading)
                    
                    Checkmarker(goals: Goal(id: 0, minType: "Material Minimalism", typesubcategory: "String", frase: "Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.))."))
                        .ignoresSafeArea()
                        .onTapGesture {
                            showSheet.toggle()
                        }
                    //
                    //                    Button {
                    //                        showSheet.toggle()
                    //                    } label: {
                    //                        Text("Prensent")
                    //                    }
                    
                    
                    
                    
                    Text("Achievements")
                        .font(.title.bold())
                        .padding(.leading)
                    
                    Text("Achieved")
                        .font(.title3.bold())
                        .padding(.leading)
                    Scroll()
                    
                    
                    //                    Text("Blocked")
                    //                        .font(.title3.bold())
                    //                        .padding(.leading)
                    //                    Scroll()
                }.navigationTitle("Process")
                
                    .halfSheet(showSheet: $showSheet){
                        
                        ZStack{
                            
                            VStack{
                                CardView()
                                
                            }
                        }.ignoresSafeArea()
                        
                    } onEnd: {
                        print("Dismissed")
                    }
                
            }  .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .background(Color.backgroundColorGrey)
            
        } 
    }
}
struct ProcessView_Previews: PreviewProvider {
    static var previews: some View {
        ProcessView(goals: Goal(id: 0, minType: "Material Minimalism", typesubcategory: "String", frase: "Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.))."))
    }
}
