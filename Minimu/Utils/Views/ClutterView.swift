//
//  ClutterView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct ClutterView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let image : [String] = ["jornal","computador","foto","fone","livro"]
    
    var body: some View {
        ZStack {
            GeometryReader{_ in
                ZStack{
                    //                Image("jornal") .resizable()
                    //                .frame(width: 60, height: 60)
                    //
                    //                Image("foto")  .resizable()
                    //                    .frame(width: 60, height: 60)
                    //
                    //                Image("fone")  .resizable()
                    //                    .frame(width: 60, height: 60)
                    //
                    //            }
                    //
                    //            Image("coracao") .resizable()
                    //                .frame(width: 60, height: 60)
                    ForEach(0..<26) { _ in
                        Image(image[0]).resizable()  .frame(width: 30, height: 30)
                        
                        
                        
                        //  .background(Color.green)
                            .position( /// here!
                                x: CGFloat.random(in: 0..<screenWidth),
                                y:  CGFloat.random(in: 0..<screenHeight)
                            )
                    }
                }
                
            }
        }
    }
    
}

struct ClutterView_Previews: PreviewProvider {
    static var previews: some View {
        ClutterView()
            .padding()
    }
}
