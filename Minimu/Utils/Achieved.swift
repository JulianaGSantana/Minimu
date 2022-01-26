//
//  Achieved.swift
//  Minimu
//
//  Created by Juliana Santana on 24/01/22.
//

import Foundation
import SwiftUI

struct Achieved: Codable, Identifiable, Hashable {
    var id: Int
    var title: String
    var valor: Int
    
    var imageName: String
    var achimagem: Image {
        Image(imageName)
    }
}
