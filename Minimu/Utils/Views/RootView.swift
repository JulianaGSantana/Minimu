//
//  RootView.swift
//  Minimu
//
//  Created by Juliana Santana on 26/01/22.
//
import SwiftUI
import Foundation
import Framework

struct RootView: View {
    let windowScene: UIWindowScene?

    var resizableSheetCenter: ResizableSheetCenter? {
        windowScene.flatMap(ResizableSheetCenter.resolve(for:))
    }
    
    var body: some View {
      //  YOUR_VIEW
            .environment(\.resizableSheetCenter, resizableSheetCenter)
    }
}
