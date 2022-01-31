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
     var counterFetcher = CounterFetcher()
    @StateObject var counterFive = CounterFetcherFive()
    //soma
    //popup
    @State var showingModal = false
    //modal nova
    @State private var showingSheet = false
   // onboarding
    @State var showSheet: Bool = false
    //totalDeItens
   // var data = UserDefaults.standard.integer(forKey: "resultadoTotal")
    @AppStorage("resultadoTotal") var data: Int = 0
    
    var body: some View {
        GeometryReader { bounds in
        NavigationView{
            ScrollView(.vertical) {
                ZStack {
                    VStack{
                        ZStack{
                    VStack(alignment:.leading){
                       
                        Text("Goal")
                            .font(.title.bold())
                            .padding(.leading)

                        
                        HStack{
                            if counterFetcher.counter >= 36{
                                Text("You reached the end!")
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
                            Text("Coming Soon new tasks")
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
                                //counterFive.saveCounterToUserDefault(counterFive.counter + 1)
                            }

                         .sheet(isPresented: $showingSheet) {
                               SheetView(selectedNumber: 5, counterFetcher: counterFetcher)
            }
                        }
                        
                        Text( "Things that you already discard: \(data)")
                         
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .foregroundColor(.secondary)


                        Spacer()
        
                        Text("Achievements")
                            .font(.title.bold())
                            .padding(.leading)
                        
                    
                        Text("Achieved")
                            .font(.title3.bold())
                            .padding(.leading)
                            
                    }
                       
                          
                        if socorro() {
                            CustomModalPopups().padding()
                        }
                            
                        }
                        Scroll(counterFetcher: counterFetcher).padding(.trailing)
                    
                    }.navigationTitle("Process")
                       
                  

                    
                }
                  
                
            }  .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .background(Color.backgroundColorGrey)
            
                
           } .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    
    func socorro() -> Bool{
        let data = UserDefaults.standard.integer(forKey: "resultadoTotal")
        if data % 5 == 0 && data >= 50 {
            return true
        }
//        let valorArredondado = Double (data)/5
//        let valorAnterior = counterFive.counter
//        let valorAtual = Int (valorArredondado.rounded(.down))
// //       let valorAtual = valorAnterior + 1
//        print(valorAnterior)
//      //  counterFive.counter = Int (valorArredondado.rounded(.down))
//        if valorAtual > valorAnterior {
//            counterFive.saveCounterToUserDefault(valorAtual)
//            return true
   //     }
        return false
    }
}
struct ProcessView_Previews: PreviewProvider {
    static var previews: some View {
        ProcessView()
    }
}
