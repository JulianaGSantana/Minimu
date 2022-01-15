//
//  ContentView.swift
//  Minimu
//
//  Created by Juliana Santana on 12/01/22.
//

import SwiftUI
import CoreData



struct ContentView: View {
    var body: some View {
        TabView {
            ClutterView()
                .tabItem {
                Image(systemName: "house")
                Text("Clutter")
                }
            ProcessView()
                .tabItem {
                Image(systemName: "house")
                Text("Process")
                }
        }
    }
    }

  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
