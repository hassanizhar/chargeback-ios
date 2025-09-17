//
//  SearchBar.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image("gle-search")
            
            TextField("Search", text: $searchText)
                .foregroundColor(.primary)
                .background(Color.white)
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("BorderColor"), lineWidth: 1)
        )
        .padding(.horizontal)
        .padding(.vertical, 8)
        .frame(height: 44)
    }
}
