//
//  ModalData.swift
//  Minimu
//
//  Created by Juliana Santana on 22/01/22.
//

import Foundation
final class ModalData: ObservableObject{
    @Published var goals: [Goal] = load("goal.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Não foi possível encontrar \(filename).")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Não foi possível encontrar \(filename):\n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Não foi possível analisar \(filename) como \(T.self):\n\(error)")
    }
}
