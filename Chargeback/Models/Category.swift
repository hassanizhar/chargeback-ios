//
//  Category.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import Foundation

enum Category: String, CaseIterable, Identifiable {
    case subscription = "Subscription"
    case utility = "Utility"
    case cardPayment = "Card Payment"
    case loan = "Loan"
    case rent = "Rent"
    
    var id: String { rawValue }
}

extension Category {
    var imageName: String {
        switch self {
        case .subscription: return "subscription"
        case .utility: return "utility"
        case .cardPayment: return "card"
        case .loan: return "loan"
        case .rent: return "rent"
        }
    }
}
