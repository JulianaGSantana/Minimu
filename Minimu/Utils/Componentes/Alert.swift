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
    var body: some View {
        NavigationView{
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                VStack(spacing: 25){
                    Image("caixa")
                        .resizable()
                        .frame(width: 60, height: 60)
                    
                    Text("Congratulations")
                        .font(.title)
                        .foregroundColor(.pink)
                    
                    Button(action: {
                        //    NavigationLink("Archieved", destination: Scroll())
                        
                    }){
                        Text("Bach To Home")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical,10)
                            .padding(.horizontal,25)
                            .background(Color.purple)
                        // .clipShape(Capsule())
                            .cornerRadius(10)
                    }
                } .padding(.vertical,25)
                    .padding(.horizontal,30)
                //   .background(BlurView())
                    .background(.ultraThinMaterial)
                    .cornerRadius(25)
                    .padding()
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
