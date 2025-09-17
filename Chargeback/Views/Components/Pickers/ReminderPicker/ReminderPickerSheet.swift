
//
//  AppPickerSheet.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import SwiftUI

struct ReminderPickerSheet: View {
    @Binding var isPresented: Bool
    @Binding var selectedReminder: Reminder
    
    let reminders: [Reminder]
    
    var body: some View {
        VStack(spacing: 12) {
            PickerHeader(isPresented: $isPresented, title: "Remind Me")
            
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(reminders, id: \.self) { reminder in
                        ReminderPickerItem(reminder: reminder, selectedReminder: $selectedReminder)
                    }
                }
            }
        }
        .presentationDetents([.medium, .large])
    }
}
