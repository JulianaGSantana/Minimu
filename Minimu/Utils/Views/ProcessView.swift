//
//  ProcessView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct ProcessView: View {
    @State var showSheetView = false
    @StateObject var modalData = ModalData()
    @StateObject var counterFetcher = CounterFetcher()
  
   // onboarding
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                VStack(alignment:.leading){
                    
                    Text("Goal")
                        .font(.title.bold())
                        .padding(.leading)
                    
                    HStack{
              
                        Text(modalData.goals[counterFetcher.counter].minType)
                            .font(.title3.bold())
                            .padding(.leading)
                        
                        Spacer()
                        
                        
                        Button(action: {
                            self.showSheetView.toggle()
                        }) {
                            Image(systemName: "info.circle")
                        }.sheet(isPresented: $showSheetView) {
                            InformationView()
                        } .padding(.trailing, 20)
                            .font(.system(size: 25))
                        
                        
                    }
                    Text(modalData.goals[counterFetcher.counter].typesubcategory)
                        .font(.headline)
                        .foregroundColor(Color.secondary)
                        .padding(.leading)
                    
                    Checkmarker(goals: modalData.goals[counterFetcher.counter])
                    
                        .ignoresSafeArea()
                        .onTapGesture {
                            showSheet.toggle()
                        }
    
                    Text("Achievements")
                        .font(.title.bold())
                        .padding(.leading)
                    
                    Text("Achieved")
                        .font(.title3.bold())
                        .padding(.leading)
                    Scroll(achieves: modalData.achieves[counterFetcher.counter])
                    
                    
                    //                    Text("Blocked")
                    //                        .font(.title3.bold())
                    //                        .padding(.leading)
                    //                    Scroll()
                }.navigationTitle("Process")
                
                    .halfSheet(showSheet: $showSheet){
                        
                        ZStack{
                            
                            VStack{
                                CardView(counterFetcher: counterFetcher)
                                
                            }
                        }.ignoresSafeArea()
                        
                    } onEnd: {
                        showSheet = false
                    }
                
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
