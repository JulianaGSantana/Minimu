//
//  MinimuApp.swift
//  Minimu
//
//  Created by Juliana Santana on 12/01/22.
//

import SwiftUI

@main
struct MinimuApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
