//
//  ListDay.swift
//  Minimu
//
//  Created by Juliana Santana on 18/01/22.
//

import SwiftUI

struct ListDay: View {
    @State var items: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thurday", "Friday", "Saturday"]
    @State var selections: [String] = []
 //   @State private var notificationManager = NotificationManager()

    var body: some View {
        List {
            ForEach(self.items, id: \.self) { item in
                MultipleSelectionRow(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                }
            }
        }
    }
}
struct ListDay_Previews: PreviewProvider {
    static var previews: some View {
        ListDay()
    }
    
}
struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}
