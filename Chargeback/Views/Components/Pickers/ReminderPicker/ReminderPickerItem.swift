//
//  AppPickerItem.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct ReminderPickerItem: View {
    
    var reminder: Reminder
    @Binding var selectedReminder: Reminder
    
    var body: some View {
        HStack {
            
            Text(reminder.rawValue)
                .foregroundColor(Color("TextDark"))
                .padding(.leading, 10)
            
            Spacer()
            
            if reminder == selectedReminder {
                Image("check_circle")
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .contentShape(Rectangle()) // makes whole row tappable
        .onTapGesture {
            selectedReminder = reminder
        }
        CustomDivider()
            .padding(.horizontal, 16)
    }
}
