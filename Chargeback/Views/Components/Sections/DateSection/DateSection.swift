//
//  AppSection.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct DateSection: View {
    
    @Binding var startDate: Date
    
    var body: some View {
        HStack {
            DatePicker("Start Date",
                       selection: $startDate,
                       displayedComponents: .date)
            .foregroundColor(Color("TextLight"))
        }
        
        CustomDivider()
    }
}
