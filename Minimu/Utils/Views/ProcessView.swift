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
    
  
    //popup
    @State private var showingModal = false
    
    //modal nova
    @State private var showingSheet = false
  
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
                        if counterFetcher.counter >= 36{
                            Text("acabou!")
                                .font(.title3.bold())
                                .padding(.leading)
                        } else {
                            
                        Text(modalData.goals[counterFetcher.counter].minType)
                            .font(.title3.bold())
                            .padding(.leading)
                        }
                        
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
                   
                    if counterFetcher.counter >= 36{
                        Text("em breve terá mais")
                            .font(.headline)
                            .foregroundColor(Color.secondary)
                            .padding(.leading)
                    } else {
                    Text(modalData.goals[counterFetcher.counter].typesubcategory)
                        .font(.headline)
                        .foregroundColor(Color.secondary)
                        .padding(.leading)
                    }
                    
                    if counterFetcher.counter >= 36{
                      Text(" ")
                    } else {
                    Checkmarker(goals: modalData.goals[counterFetcher.counter])
                    
                        .ignoresSafeArea()
                        .onTapGesture {
//
                            showingSheet.toggle()
                            
                        }
                        
                        .sheet(isPresented: $showingSheet) {
                            SheetView(selectedNumber: 5, somatorio: 0, counterFetcher: counterFetcher)
                        }
                    }
                    
                    
    
                    Text("Achievements")
                        .font(.title.bold())
                        .padding(.leading)
                    
                    Text("Achieved")
                        .font(.title3.bold())
                        .padding(.leading)
                    Scroll(counterFetcher: counterFetcher)
                
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
