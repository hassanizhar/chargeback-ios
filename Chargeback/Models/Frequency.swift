//
//  Category.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import Foundation

enum Frequency: String, CaseIterable, Identifiable {
    case weekly = "Weekly"
    case monthly = "Monthly"
    case annually = "Annually"
    
    var id: String { rawValue }
}
