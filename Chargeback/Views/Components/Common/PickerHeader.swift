//
//  PickerHeader.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct PickerHeader: View {
    @Binding var isPresented: Bool
    var title: String
    
    var body: some View {
        ZStack {
            Text(title)
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color("TextDark"))
            
            HStack {
                Spacer()
                Button("Done") {
                    isPresented = false
                }
                .foregroundColor(Color("AppBlue"))
            }
            .padding(.horizontal)
        }
        .padding(.vertical, 24)
    }
}
