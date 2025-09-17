//
//  EditSubscriptionViewModel.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import Foundation

class EditSubscriptionViewModel: ObservableObject {
    @Published var subscription: Subscription
    
    init(subscription: Subscription) {
        self.subscription = subscription
    }
    
    func save() {
        // implement save logic (CoreData, API, etc.)
        print("Saved \(subscription)")
    }
    
    func delete() {
        // implement delete logic
        print("Deleted subscription")
    }
}
