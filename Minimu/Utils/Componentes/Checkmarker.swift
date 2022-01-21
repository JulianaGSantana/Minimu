//
//  Checkmarker.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct Checkmarker: View {
    @State var selected = false
  //  @State var showSheet: Bool = false
    
    var goals: [String] = ["Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.)",
                           "Socks without pair, perforated",
                           "Old, stained, torn underwear",
                           "Underwear that you no longer wear or that are too small (pants, skirts, shorts, etc.)",
                           "Accessories you haven't used in a while - Glasses, watch, Earrings without pair; accessory, Oxidized jewelry",
                           "Old, unused shoes that hurt",
                           "Clothing for events and parties (it is often better to rent clothes for these events than to always buy something different)",
                           "Defective or unused bags, suitcases and wallets;",
                           "Bored, stained or very old bedding that are in poor condition",
                           "Gifts you have received but do not use;",
                           "Packages with few products that are no longer used",
                           "Repeat products",
                           "Packages with few products that are no longer used",
                           "Excess of documents, slips and vouchers saved that can already be thrown away or scanned, with guarantees already expired or with a deadline already fulfilled",
                           "Instruction manuals","Christmas card, store cards",
                           "Post It in excess or already used and not discarded",
                           "Notebooks that have been stored for a long time and are not being used.",
                           "DVDs, disks, flash drives",
                           "Pens that don't work",
                           "Books, consider between entertainment and practical",
                           "Unused appliances - headphones, chargers",
                           "Decoration Items - Unused Christmas decorations.",
                           "Unused kitchen utensils, like Plastic pots without lids or lids without pots",
                           "objects remind people or moments and phases",
                           "Plastic bags",
                           "Let go of 10 small items",
                           "photos",
                           "clothes that remind people or childhood",
                           "objects remind people or moments and phases",
                           "Old schoolbooks/papers",
                           "Go to Settings > Screen Time and see how much time on the cell phone is needed? If not, rethink the amount of time and put a limit on usage on apps that you think are time consuming",
                           "Clean up your email, deleting old emails, advertisements, or describing the company email channel.",
                           "Think about your addictions, is there a website, app or digital space that doesn't do you good? If you don't change or decrease your use",
                           "In the main communication channel you use, delete old messages or groups that you no longer need.",
                           "View your cell phone photo album and see prints or images that are taking up space.",
                           "On your computer, see files that you no longer need and that can be saved in different places"]
    
    var body: some View {
        VStack{
            VStack {
                HStack{
                    ZStack{
                        Circle()
                            .stroke(selected ? Color("blue"): Color.red, lineWidth: 2)
                            .frame(width: 25, height: 25, alignment: .center)
                        
                        if selected{
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.blue)
                        
                        }
                        
                    } .padding()
              
                    Text("dcndscndhcbdhcbdhsbchsdbhd")
//                    ForEach(goals.indices) {_ in
//                        Text(self.goals[1])
//                    }
                    
                    
                    
                    
                }.padding(.horizontal)
                    .padding(.bottom, 20)
                    .padding(.top, 20)
//                    .onAppear(perform: {
//                       withAnimation(Animation.spring().delay(0.5)) {
//                              showSheet.toggle()
//                        }
//                     })
//                    .halfSheet(showSheet: $showSheet){
//
//                                          ZStack{
//
//                                              VStack{
//                                                CardView()
//
//                                             }
//                                         }.ignoresSafeArea()
//
//                                      } onEnd: {
//                                         print("Dismissed")
//                                      }
             // .contentShape(Checkmarker())
//                    .onTapGesture(perform: {
//                        selected.toggle()
//                    })
            }
    
        }  .background(Color .cardColor)
            .cornerRadius(13)
            .shadow(radius: 4)
            .padding()
          

    }
}
struct Checkmarker_Previews: PreviewProvider {
    static var previews: some View {
        Checkmarker()
    }
}









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
