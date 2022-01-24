//
//  CardView.swift
//  Minimu
//
//  Created by Juliana Santana on 17/01/22.
//

import SwiftUI

struct CardView: View {
    @State private var selectedNumber = "5"
    var counterFetcher : CounterFetcher
    var body: some View {
        NavigationView {
            VStack{
                Text("How many items did you manage to discard?")
                    .font(.title2.bold())
                    .frame(width: 350, alignment: .center)
                
                // Form {
                Section {
                    Picker("Number", selection: $selectedNumber) {
                        ForEach(1...100, id: \.self) {
                            selectedNumber in Text("\(selectedNumber)")
                            
                        }
                    }
                    .pickerStyle(.wheel)
                } .frame(width: 100, height: 150)
                
                
                //  Text("\(selectedNumber) items")
                Button(action: {
                    updateCounter()
                        //adicionar dismiss nesse botão
                    //Como linkar o Array de Strings com o contador?
                    //ajustar essa view com o checkmark
                }) {
                    Text("Done")
                    //  showOnBoarding.toggle()
                    
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(width: 350, height: 60)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .padding(.top, 20)
                }
            }
        }
    }
    func updateCounter() {
        let currentCounter = UserDefaults().integer(forKey: "Counter")
        
        let newCounter = currentCounter + 1
       // UserDefaults().set(newCounter, forKey: "Counter")
        counterFetcher.saveCounterToUserDefault(newCounter)
    }
}


//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
