//
//  Category.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import Foundation

enum Reminder: String, CaseIterable, Identifiable {
    case sameDay = "Same day"
    case oneDayBefore = "1 day before"
    case twoDaysBefore = "2 days before"
    
    var id: String { rawValue }
}
