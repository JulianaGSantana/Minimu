//
//  InformationView.swift
//  Minimu
//
//  Created by Juliana Santana on 15/01/22.
//

import SwiftUI

struct InformationView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical){
                
                
                VStack(alignment: .leading){
                    
                    Text("About")
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    InformationCard(inf: "'Minimalism is a behavior that makes people more important than the things they have.'\nMinimalism: A Documentary About the Important Things")
                        .font(.body)
                    
                    Text("Questions for help")
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    InformationCard(inf: "Does this item add value to my life? \nDoes this spark joy? \nHow often do I use this item? \nHow does this add value to my life? \nHow does this help me live the life I want most?")
                        .font(.body)
                    
                    Text("Pillars")
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    InformationCard(inf: "To start this journey, we will start by minimizing the material items, so that we can then explore other areas such as digital, mental, temporal and relational. \n Material")
                        .font(.body)
                        
                    
                    //                Button("Dismiss") {
                    //                    presentationMode.wrappedValue.dismiss()
                    //                }
                    
                } .navigationTitle("Minimalism")
                //.background(Color.backgroundColorGrey)
                    .navigationBarTitleDisplayMode(.large)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button{
                                presentationMode.wrappedValue.dismiss()
                            } label: {Image(systemName: "xmark.circle")}
                        }
                    }   .font(.system(size: 20))
            } .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .background(Color.backgroundColorGrey)
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
