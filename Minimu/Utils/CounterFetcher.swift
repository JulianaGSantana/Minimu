//
//  CounterFetcher.swift
//  Minimu
//
//  Created by Juliana Santana on 20/01/22.
//

import Foundation
class CounterFetcher: ObservableObject {
    @Published var counter : Int?
    init(){
        if UserDefaults().bool(forKey: "Counter") {
            counter = UserDefaults().integer(forKey: "Counter")
        }
    }
    
    
    internal func saveCounterToUserDefault(_ newCounter: Int) {
        UserDefaults().set(newCounter, forKey: "Counter")
    }
}
