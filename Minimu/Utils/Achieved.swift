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
    
    var imageName: String
    var imagem: Image {
        Image(imageName)
    }
}
