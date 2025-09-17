//
//  Subscription.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import Foundation

struct Subscription: Identifiable {
    let id = UUID()
    var appName: AppName
    var amount: Double
    var category: Category
    var startDate: Date
    var frequency: Frequency
    var remindMe: Reminder
    var isActive: Bool
}
