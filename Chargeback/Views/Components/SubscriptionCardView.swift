//
//  SubscriptionCardView.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//

import SwiftUI

struct SubscriptionCardView: View {
    var subscription: Subscription

    var body: some View {
        HStack {
            Image(subscription.appName.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(.top, 20)
                .padding(.bottom, 20)
                .padding(.leading, 20)

            VStack(alignment: .leading, spacing: 4) {
                Text(subscription.appName.rawValue)
                    .font(.headline)
                Text("$\(subscription.amount, specifier: "%.2f")")
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.trailing, 20)
        .frame(height: 90)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color("BorderColor"), lineWidth: 1)
        )
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
        )
    }
}

struct SubscriptionCardView_Previews: PreviewProvider {
    static var previews: some View {
        let sample = Subscription(
            appName: .netflix,
            amount: 50.0,
            category: .subscription,
            startDate: Date(),
            frequency: .weekly,
            remindMe: .sameDay,
            isActive: true
        )
        SubscriptionCardView(subscription: sample)
    }
}
