//
//  AppPickerSheet.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import SwiftUI

struct AmountPickerSheet: View {
    @Binding var isPresented: Bool
    @Binding var amount: Double

    var body: some View {
        VStack(spacing: 12) {
            PickerHeader(isPresented: $isPresented, title: "App")
            HStack {
                Image("attach_money")

                TextField("Amount",
                          value: $amount,
                          format: .number)
                    .keyboardType(.decimalPad)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("TextDark"))
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("BorderColor"), lineWidth: 1)
            )
            .padding(.horizontal)
            .padding(.vertical, 8)
            .frame(height: 44)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .presentationDetents([.medium])
    }
}
