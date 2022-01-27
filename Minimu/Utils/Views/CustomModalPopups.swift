//
//  CustomModalPopups.swift
//  Minimu
//
//  Created by Juliana Santana on 27/01/22.
//

import SwiftUI

struct CustomModalPopups: View {
    @State private var showingModal = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
             
                Button(action: {
                    self.showingModal = true
                }) {
                    Text("Show popup")
                }
                Spacer()
            }
            
            // The Custom Popup is on top of the screen
            if $showingModal.wrappedValue {
                // But it will not show unless this variable is true
                ZStack {
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.vertical)
                    // This VStack is the popup
                    VStack() {
                        Spacer()
                        Spacer()
                        Text("You already let go of 100 things!")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                         
                        
                        Image("caixa")
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Spacer()
                        Divider()
                        
                     
                        Button(action: {
                            self.showingModal = false
                        }) {
                            Text("Yeah!")
                        }.padding()
                    }  .padding(.leading,5)
                        .padding(.trailing,5)
                    //    .padding(.top,10)
                    .frame(width: 300, height: 240)
                    
                    .background(Color.cardColor)
                    .cornerRadius(20).shadow(radius: 20)
                }
            }
        }
    }
}
struct CustomModalPopups_Previews: PreviewProvider {
    static var previews: some View {
        CustomModalPopups()
    }
}
