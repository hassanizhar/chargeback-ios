//
//  AppSection.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct AmountSection: View {
    
    @Binding var showAmountSheet: Bool
    var amount: Double
    
    var body: some View {
        HStack {
            Text("Amount")
                .foregroundColor(Color("TextLight"))
            Spacer()
            Text("$\(amount, specifier: "%.2f")")
                .foregroundColor(Color("TextDark"))
        }
        .onTapGesture {
            showAmountSheet = true
        }
        CustomDivider()
    }
}
