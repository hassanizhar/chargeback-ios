//
//  AppPickerItem.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct FrequencyPickerItem: View {
    
    var frequency: Frequency
    @Binding var selectedFrequency: Frequency
    
    var body: some View {
        HStack {
            
            Text(frequency.rawValue)
                .foregroundColor(Color("TextDark"))
                .padding(.leading, 10)
            
            Spacer()
            
            if frequency == selectedFrequency {
                Image("check_circle")
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .contentShape(Rectangle()) // makes whole row tappable
        .onTapGesture {
            selectedFrequency = frequency
        }
        CustomDivider()
            .padding(.horizontal, 16)
    }
}
