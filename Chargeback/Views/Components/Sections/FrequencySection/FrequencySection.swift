//
//  AppSection.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct FrequencySection: View {
    
    @Binding var showFrequencySheet: Bool
    var frequency: Frequency
    
    var body: some View {
        HStack {
            Text("Frequency")
                .foregroundColor(Color("TextLight"))
            Spacer()
            
            HStack(spacing: 4) {
                Text(frequency.rawValue)
                    .foregroundColor(Color("TextDark"))
                
                Image("unfold_more")
                    .resizable()
                    .frame(width: 18, height: 18)
            }
            .onTapGesture {
                showFrequencySheet = true
            }
        }
        
        CustomDivider()
    }
}
