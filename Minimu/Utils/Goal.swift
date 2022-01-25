//
//  Goal.swift
//  Minimu
//
//  Created by Juliana Santana on 22/01/22.
//

import Foundation
import SwiftUI


struct Goal: Codable, Identifiable, Hashable {
    var id: Int
    var minType: String
    var typesubcategory: String
    var frase: String
    
    private var clutterImage: String
     var cluImagem: Image {
         Image(clutterImage)
     }
}
