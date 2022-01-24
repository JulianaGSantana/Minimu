//
//  ClutterView.swift
//  Minimu
//
//  Created by Juliana Santana on 14/01/22.
//

import SwiftUI

struct Achieve: Hashable {
    var id: Int
    let imageName: String
}

struct ClutterView: View {
  //  let data = (1...100).map { "Item \($0)" }
    let achieves : [Achieve] = [
        Achieve(id: 0, imageName: "check"),
        Achieve(id: 1, imageName: "computador"),
        Achieve(id: 2, imageName: "cueca"),
        Achieve(id: 3, imageName: "coracao"),
        Achieve(id: 4, imageName: "cueca"),
        Achieve(id: 5, imageName: "cueca"),
        Achieve(id: 6, imageName: "check"),
        Achieve(id: 7, imageName: "computador"),
        Achieve(id: 8, imageName: "check"),
        Achieve(id: 9, imageName: "computador"),
        Achieve(id: 10, imageName: "cueca"),
        Achieve(id: 11, imageName: "coracao"),
        Achieve(id: 12, imageName: "cueca"),
        Achieve(id: 13, imageName: "cueca"),
        Achieve(id: 14, imageName: "check"),
        Achieve(id: 15, imageName: "computador"),
        Achieve(id: 16, imageName: "check"),
        Achieve(id: 17, imageName: "computador"),
        Achieve(id: 18, imageName: "cueca"),
        Achieve(id: 19, imageName: "coracao"),
        Achieve(id: 20, imageName: "cueca"),
        Achieve(id: 21, imageName: "cueca"),
        Achieve(id: 22, imageName: "check"),
        Achieve(id: 23, imageName: "check"),
        Achieve(id: 24, imageName: "computador"),
        Achieve(id: 25, imageName: "cueca"),
        Achieve(id: 26, imageName: "coracao"),
        Achieve(id: 27, imageName: "cueca"),
        Achieve(id: 28, imageName: "cueca"),
        Achieve(id: 29, imageName: "check"),
        Achieve(id: 30, imageName: "computador"),
        Achieve(id: 31, imageName: "cueca"),
        Achieve(id: 32, imageName: "coracao"),
        Achieve(id: 23, imageName: "cueca"),
        Achieve(id: 34, imageName: "cueca"),
        Achieve(id: 35, imageName: "check")
       
    ]
    
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

        var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(achieves, id: \.self) { item in
                        Image("\(item.imageName)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                    }
                }
                .padding(.horizontal)
            }
          //  .frame(maxHeight: 300)
        }
    
}


struct ClutterView_Previews: PreviewProvider {
    static var previews: some View {
        ClutterView()
           
    }
}




//    let screenWidth = UIScreen.main.bounds.width
//    let screenHeight = UIScreen.main.bounds.height
//    let image : [String] = ["jornal","computador","foto","fone","livro"]
//
//    var body: some View {
//        ZStack {
//            GeometryReader{_ in
//                ZStack{
//
//                    ForEach(0..<26) { _ in
//                        Image(image[0]).resizable()  .frame(width: 30, height: 30)
//
//
//
//                        //  .background(Color.green)
//                            .position( /// here!
//                                x: CGFloat.random(in: 0..<screenWidth),
//                                y:  CGFloat.random(in: 0..<screenHeight)
//                            )
//                    }
//                }
//
//            }
//        }
//    }
//
//}



//          GeometryReader { proxy in
//
//              ForEach(0...36, id:\.self) { index in
//
//                  CirclesView(index: index, offset: logicalFunction(size: CGSize(width: proxy.size.width - 50, height: proxy.size.height - 50)))
//
//              }
//
//          }
//          .background(Color.red)
//      //    .ignoresSafeArea()
//
//      }
//
//      func logicalFunction(size: CGSize) -> CGSize {
//
//          // Do your works here!
//
//          let width: CGFloat = CGFloat.random(in: 0.0...size.width)
//          let height: CGFloat = CGFloat.random(in: 0.0...size.height)
//
//          return CGSize(width: width, height: height)
//
//      }
//
//  }
//
//  struct CirclesView: View {
//
//      let index: Int
//      let offset: CGSize
//
//
//      var body: some View {
//
//          Circle()
//              .strokeBorder(Color.blue, lineWidth: 2.0, antialiased: true)
//              .frame(width: 50, height: 50, alignment: .center)
//              .overlay(Text(String(describing: index)))
//              .offset(offset)
//      }
//
//  }
