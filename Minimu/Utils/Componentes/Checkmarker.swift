//
//  Checkmarker.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//
import SwiftUI

struct Checkmarker: View {
    @State var selected = false
    @State var showSheet: Bool = false
    
    var goals: Goal

    var body: some View {
        VStack{
            VStack {
                HStack{
                    ZStack{
                        Circle()
                            .stroke(selected ? Color("blue"): Color.red, lineWidth: 2)
                            .frame(width: 25, height: 25, alignment: .center)
                        
//                        if selected {
//                            Image(systemName: "checkmark.circle.fill")
//                                .font(.system(size: 25))
//                                .foregroundColor(.blue)
                      //     showSheet.toggle()
                //        }
                        
                    } .padding()  
                    // Text("Look for socks without pair, ")
                    Text(self.goals.frase.localized())
                    
                }.padding(.horizontal)
                    .padding(.bottom, 20)
                    .padding(.top, 20)
                //  .contentShape(Checkmarker())
//                    .onTapGesture(perform: {
//                        selected.toggle()
//                    })
            }
        }  .background(Color .cardColor)
            .cornerRadius(13)
            .frame( maxWidth: .infinity, maxHeight: .infinity)
        
            .shadow(radius: 4)
            .padding()
        
//            .halfSheet(showSheet: $showSheet){
//               
//                                       ZStack{
//               
//                                           VStack{
//                                               CardView()
//               
//                                           }
//                                       }.ignoresSafeArea()
//               
//                                   } onEnd: {
//                                       print("Dismissed")
//                                   }

    }
}
//struct Checkmarker_Previews: PreviewProvider {
//    static var previews: some View {
//        Checkmarker(goals: Goal(id: 0, minType: "Material Minimalism", typesubcategory: "String", frase: "Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.))."))
//    }
//}


//depois de .padding(.top,20)
//@State var showSheet: Bool = false
// .onAppear(perform: {
//    withAnimation(Animation.spring().delay(0.5)) {
//         showSheet.toggle()
//     }
//  })
// .onTapGesture {
//                            showSheet.toggle()
//                        }

//   .halfSheet(showSheet: $showSheet){
//
//                        ZStack{
//
//                            VStack{
//                                CardView()
//
//                            }
//                        }.ignoresSafeArea()
//
//                    } onEnd: {
//                        print("Dismissed")
//                    }
