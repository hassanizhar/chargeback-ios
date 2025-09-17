
//
//  AppPickerSheet.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import SwiftUI

struct CategoryPickerSheet: View {
    @Binding var isPresented: Bool
    @Binding var selectedCategory: Category
    
    let categories: [Category]
    
    var body: some View {
        VStack(spacing: 12) {
            PickerHeader(isPresented: $isPresented, title: "Category")
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(categories, id: \.self) { category in
                        CategoryPickerItem(category: category, selectedCategory: $selectedCategory)
                    }
                }
            }
        }
        .presentationDetents([.medium, .large])
    }
}
