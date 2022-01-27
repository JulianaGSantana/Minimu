//
//  TesteRow.swift
//  Minimu
//
//  Created by Juliana Santana on 26/01/22.
//

import SwiftUI

struct TesteRow: View {
    @State var state: ResizableSheetState = .hidden
    var body: some View {
        Button("Show sheet") {
                  state = .medium
              }
              .resizableSheet($state) { builder in
                  builder.content { context in
                      Text("text")
                          .padding()
                  }
              }
    }
}

struct TesteRow_Previews: PreviewProvider {
    static var previews: some View {
        TesteRow()
    }
}
