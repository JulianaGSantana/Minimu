//
//  ListDay.swift
//  Minimu
//
//  Created by Juliana Santana on 18/01/22.
//

import SwiftUI

struct ListDay: View {
  //  @Environment(\.dismiss) private var dismiss
    
    @Binding var selectedCategory: String
    
    var categories: [String]
    
        
        var body: some View {
            List {
                ForEach(0..<categories.count) { item in
                    Button {
                        self.selectedCategory = self.categories[item]
                       // self.dismiss()
                    } label: {
                        HStack {
                            Text(categories[item])
                                .foregroundColor(Color.primary)
                            Spacer()
                            if categories[item] == selectedCategory {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            
        }
    }
        
//        List {
//            NavigationLink(destination: CategoryView(selectedCategory: $itemCategory, categories: ["Alimentos", "Remédios", "Higiene", "Outros"])) {
//                HStack{
//                    Text("Categoria")
//                        .foregroundColor(.primary)
//
//                    Spacer()
//
//                    Text("\(itemCategory)")
//                        .foregroundColor(.secondary)
//                }
//            }
//
//            if (itemCategory != "Outros" && itemCategory != "" && postType == "Doação") {
//                DatePicker(
//                    "Validade",
//                    selection: $itemExpirationDate,
//                    displayedComponents: .date
//                )
//            }
//        }
//
//
//        NavigationLink(destination: CategoryView(selectedCategory: $organizationZipCode, categories: ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins", "Distrito Federal"])) {
//
//            HStack {
//                Text("Estado da organização")
//                Spacer()
//                Text("\(organizationZipCode)")
//                    .foregroundColor(.secondary)
//            }
//        }
        
        
   

struct ListDay_Previews: PreviewProvider {
    static var previews: some View {
        ListDay(selectedCategory: .constant(""), categories: ["ONG", "Protetor Independente", "Loja", "Fornecedor"])
    }
}
