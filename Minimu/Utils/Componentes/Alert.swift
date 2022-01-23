//
//  Alert.swift
//  Minimu
//
//  Created by Juliana Santana on 22/01/22.
//

import SwiftUI

struct Alert: View {
    var body: some View {
        Home()
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        Alert()
    }
}


struct Home : View {
    @State var customAlert = false
    @State private var isButtonPressed: Bool = false
    var body: some View{
        ZStack{
            VStack{
                Button(action: {
                    withAnimation{
                        customAlert.toggle()
                    }
                }) {
                    Text("Custom AlertView!")
                }
                
            }
            if customAlert{
                CustomAlertView(show: $customAlert)
            }
        }  .edgesIgnoringSafeArea(.all)
    }
}

struct CustomAlertView: View {
    @Binding var show: Bool
    @State var isProfileTapped: Bool = false
    @State private var isButtonPressed: Bool = false
    var body: some View {
        NavigationView{
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                VStack(spacing: 25){
                    
                    Text("You already let go of 100 things!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                     
                    
                    Image("caixa")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                 
                    
                    //    .lineLimit(1)
                    Divider()
                    
                    Button(action: {
                        ProcessView(goals: Goal(id: 0, minType: "Material Minimalism", typesubcategory: "String", frase: "Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.))."))
                        
                               })
                  { //label acho
                        Text("Yeah!")
                            .foregroundColor(.blue)
                         //   .fontWeight(.bold)
                          //  .padding(.vertical,10)
                            //    .padding(.horizontal,25)
                       
                        // .clipShape(Capsule())
                            
                    }
                    
                    //VStack
                }.padding(.vertical,25)
                  //  .padding()
                   // .padding(.horizontal,30)
                //   .background(BlurView())
                    .background(.regularMaterial)
                    .cornerRadius(25)
                    .padding(.leading, 60)
                    .padding(.trailing, 60)
            } .frame(maxWidth: .infinity, maxHeight: .infinity )
                .background(Color.primary.opacity(0.35))
              
                .onTapGesture {
                    withAnimation{
                        show.toggle()
                    }
                }
        }
    }
}
