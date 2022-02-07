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
                    
                    Text("About".localized())
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    InformationCard(inf: "'Minimalism is a behavior that makes people more important than the things they have.'\nMinimalism: A Documentary About the Important Things".localized())
                        .font(.body)
                        .padding(.trailing)
                    
                    Text("Questions for help".localized())
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    InformationCard(inf: "Does this item add value to my life?           \nDoes this spark joy? \n How often do I use this item? \nHow does this add value to my life? \nHow does this help me live the life I want most?".localized())
                        .font(.body)
                        .padding(.trailing)
                    
                    Text("Pillars".localized())
                        .font(.title3.bold())
                        .padding(.leading)
                    
                    InformationCard(inf: "To start this journey, we will start by minimizing the material items, so that we can then explore other areas such as digital, mental, temporal and relational.".localized())
                        .font(.body)
                        .padding(.trailing)
                    
                    InformationCard(inf:"Material: \n We often have several 'visible junk' that take up space and can be disposable. We are paying for it because everything that takes up space has a cost, so it's necessary to raise the reflection: What is the function of this?".localized())
                        .font(.body)
                        .padding(.trailing)
                    
                    InformationCard(inf:"Digital: \n In this era of excess information, we feel obliged to be on top of everything and FOMO (fear of missing out) happens. We need to think about our focus in life. With that, we managed to get a lot out of that thought of always being tuned in to everything.".localized())
                        .font(.body)
                        .padding(.trailing)
                    
                    
                    InformationCard(inf:"Mental: \n When turning on the TV, being on social media, reading false information are often intentions that are not good for us, that do not concern our own lives. It stays in our mind, taking up space and causing worries, so our mind becomes a garbage dump.".localized())
                        .font(.body)
                        .padding(.trailing)
                    
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
