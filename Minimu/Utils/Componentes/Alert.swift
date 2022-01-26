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
    @State private var showingDetail = false
    var body: some View{
        ZStack{
       
            VStack{
                Button("Custom AlertView!")   {
                    withAnimation{
                    //    customAlert.toggle()
                        showingDetail = true
                    }
                }
                .fullScreenCover(isPresented: $showingDetail) {
                    CustomAlertView(show: $showingDetail)
                }
//            if customAlert {
//
//                CustomAlertView(show: $customAlert)
//                //showingDetail = true
//            }
            
        
        }  .edgesIgnoringSafeArea(.all)
        
    }
}

struct CustomAlertView: View {


    @Binding var show: Bool
    @State var isProfileTapped: Bool = false
    @State private var isButtonPressed: Bool = false
    @Environment(\.presentationMode) var presentationMode
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
                    
                 
                    Divider()
                    
                  //  NavigationLink(destination: Home()) {
                                  //      Text("Yeah!!")
                                    
                Button("Yeah!") {
                    presentationMode.wrappedValue.dismiss()
                        }
                    
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
}

