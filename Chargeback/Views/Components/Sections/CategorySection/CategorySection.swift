//
//  AppSection.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct CategorySection: View {
    
    @Binding var showCategorySheet: Bool
    var category: Category
    
    var body: some View {
        HStack {
            Text("Category")
                .foregroundColor(Color("TextLight"))
            Spacer()
            
            HStack(spacing: 4) {
                Image(category.imageName)
                    .resizable()
                    .frame(width: 18, height: 18)
                Text(category.rawValue)
                    .foregroundColor(Color("TextDark"))
                
                Image("unfold_more")
                    .resizable()
                    .frame(width: 18, height: 18)
            }
            .onTapGesture {
                showCategorySheet = true
            }
        }
    }
   
}
