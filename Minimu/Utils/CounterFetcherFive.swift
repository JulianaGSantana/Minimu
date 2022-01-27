//
//  CounterFetcherFive.swift
//  Minimu
//
//  Created by Juliana Santana on 27/01/22.
//

import Foundation
class CounterFetcherFive: ObservableObject {
    @Published var counter : Int = 0
    init(){
        if UserDefaults().bool(forKey: "Five") {
            counter = UserDefaults().integer(forKey: "Five")
        }
    }
    
    
    internal func saveCounterToUserDefault(_ newCounter: Int) {
        UserDefaults().set(newCounter, forKey: "Five")
        counter = newCounter
    }
}
