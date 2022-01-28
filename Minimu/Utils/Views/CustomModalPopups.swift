//
//  CustomModalPopups.swift
//  Minimu
//
//  Created by Juliana Santana on 27/01/22.
//

import SwiftUI

struct CustomModalPopups: View {
    @State var showingModal = true
    let data = UserDefaults.standard.integer(forKey: "resultadoTotal")
    
    var body: some View {
//
           if $showingModal.wrappedValue {
//
                ZStack {
                    
                    VStack() {
                        Spacer()
                        Spacer()
                        Text("You already let go of \(data) things!")
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
                    }  .padding(.leading,8)
                        .padding(.trailing,8)
                    //    .padding(.top,10)
                    .frame(width: 300, height: 240)
                   
                    .background(Color.cardColor)
                    .cornerRadius(20).shadow(radius: 20)
                }
              
             
               
            }
        }
   }
//}
struct CustomModalPopups_Previews: PreviewProvider {
    static var previews: some View {
        CustomModalPopups()
    }
}
