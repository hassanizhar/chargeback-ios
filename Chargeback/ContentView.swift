//
//  ContentView.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let sample = Subscription(
            appName: .netflix,
            amount: 50.0,
            category: .subscription,
            startDate: Date(),
            frequency: .weekly,
            remindMe:  .sameDay,
            isActive: true
        )
        EditSubscriptionView(viewModel: EditSubscriptionViewModel(subscription: sample))
    }
}

#Preview {
    ContentView()
}
