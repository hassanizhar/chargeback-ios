
//
//  AppPickerSheet.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import SwiftUI

struct FrequencyPickerSheet: View {
    @Binding var isPresented: Bool
    @Binding var selectedFrequency: Frequency
    
    let frequencies: [Frequency]
    
    var body: some View {
        VStack(spacing: 12) {
            PickerHeader(isPresented: $isPresented, title: "Frequency")
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(frequencies, id: \.self) { frequency in
                        FrequencyPickerItem(frequency: frequency, selectedFrequency: $selectedFrequency)
                    }
                }
            }
        }
        .presentationDetents([.medium, .large]) // adjustable sheet height
    }
}
