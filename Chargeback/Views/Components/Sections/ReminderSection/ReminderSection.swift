//
//  AppSection.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct ReminderSection: View {
    
    @Binding var showReminderSheet: Bool
    var remindMe: Reminder
    
    var body: some View {
        HStack {
            Text("Remind Me")
                .foregroundColor(Color("TextLight"))
            Spacer()
            
            HStack(spacing: 4) { // spacing between text and icon
                Text(remindMe.rawValue)
                    .foregroundColor(Color("TextDark"))
                
                Image("unfold_more") // replace with your icon asset name
                    .resizable()
                    .frame(width: 18, height: 18) // adjust size as needed
            }
            .onTapGesture {
                showReminderSheet = true
            }
        }
        
        CustomDivider()
    }
}
