//
//  BottomSheet.swift
//  Minimu
//
//  Created by Juliana Santana on 18/01/22.
//

import SwiftUI

struct BottomSheet: View {
    var body: some View {
        ProcessView(goals: Goal(id: 0, minType: "Material Minimalism", typesubcategory: "String", frase: "Separate top clothes that you no longer wear or that are too small (t-shirts, blouses, etc.))."))
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet()
    }
}

//olhar aqui na hora de integrar
//struct Home: View{
//    @State var showSheet: Bool = false
//    var body: some View{
//        NavigationView{
//            Button {
//                showSheet.toggle()
//            } label: {
//                Text("Prensent")
//            }
//            .navigationTitle("Half Modal")
//
//            .halfSheet(showSheet: $showSheet){
//   //
//                ZStack{
//
//                    VStack{
//                        CardView()
//
////                        Button {
////                            showSheet.toggle()
////                        } label: {
////                            Text("close")
////                        }
//                    }
//                }.ignoresSafeArea()
//
//            } onEnd: {
//                print("Dismissed")
//            }
//        }
//    }
//}

//custom half sheet modifier...
extension View{
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder
                                    sheetView: @escaping ()->SheetView,onEnd: @escaping()->())->some View{
        
        return self
            .background(
                HalfSheetHelper(sheetView: sheetView(), showSheet: showSheet, onEnd: onEnd)
            )
    }
}

struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable{
    var sheetView: SheetView
    @Binding var showSheet: Bool
    var onEnd: ()->()
    
    let controller = UIViewController()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        
        controller.view.backgroundColor = .clear
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
        if showSheet{
            
            let sheetController = CustomHostingController(rootView: sheetView)
            sheetController.presentationController?.delegate = context.coordinator
            uiViewController.present(sheetController, animated: true)
            
        } else {
            uiViewController.dismiss(animated: true)
        }
    }
    
    
    
    class Coordinator: NSObject, UISheetPresentationControllerDelegate{
        
        var parent: HalfSheetHelper
        
        init(parent: HalfSheetHelper){
            self.parent = parent
        }
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            parent.showSheet = false
            parent.onEnd()
        }
    }
    
}

class CustomHostingController<Content: View>: UIHostingController<Content>{
    override func viewDidLoad() {
        
        view.backgroundColor = .clear
        
        if let presentantionController = presentationController as? UISheetPresentationController{
            
            presentantionController.detents = [
                .medium()
                
                
            ]
            
            presentantionController.prefersGrabberVisible = true
        }
    }
}
