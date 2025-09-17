//
//  AppPickerItem.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct CategoryPickerItem: View {
    
    var category: Category
    @Binding var selectedCategory: Category
    
    var body: some View {
        HStack {
            Image(category.imageName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding(8)
                .background(
                    Circle()
                        .fill(Color("IconBackground"))
                )
            
            Text(category.rawValue)
                .foregroundColor(Color("TextDark"))
                .padding(.leading, 10)
            
            Spacer()
            
            if category == selectedCategory {
                Image("check_circle")
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .contentShape(Rectangle()) 
        .onTapGesture {
            selectedCategory = category
        }
        CustomDivider()
            .padding(.horizontal, 16)
    }
}
