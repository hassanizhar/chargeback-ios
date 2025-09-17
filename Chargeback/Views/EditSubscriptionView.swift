//
//  EditSubscriptionView.swift
//  Chargeback
//
//  Created by Hassan Izhar on 16/09/2025.
//


import SwiftUI

struct EditSubscriptionView: View {
    
    @Environment(\.dismiss) private var dismiss
    @StateObject var viewModel: EditSubscriptionViewModel
    
    @State private var showAppSheet = false
    @State private var showAmountSheet = false
    @State private var showCategorySheet = false
    @State private var showFrequencySheet = false
    @State private var showReminderSheet = false
    
    let allApps: [AppName] = AppName.allCases
    let allCategories: [Category] = Category.allCases
    let allFrequencies: [Frequency] = Frequency.allCases
    let allReminders: [Reminder] = Reminder.allCases
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("ScreenBackground").ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 16) {
                        SubscriptionCardView(subscription: viewModel.subscription)
                        
                        VStack(spacing: 12) {
                            AppSection(showAppSheet: $showAppSheet, appName: viewModel.subscription.appName)
                            
                            AmountSection(showAmountSheet: $showAmountSheet, amount: viewModel.subscription.amount)
                            
                            CategorySection(showCategorySheet: $showCategorySheet, category: viewModel.subscription.category)
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white))
                        
                        VStack(spacing: 16) {
                            DateSection(startDate: $viewModel.subscription.startDate)
                            
                            FrequencySection(showFrequencySheet: $showFrequencySheet, frequency: viewModel.subscription.frequency)
                            
                            ReminderSection(showReminderSheet: $showReminderSheet, remindMe: viewModel.subscription.remindMe)
                            
                            Toggle("Active", isOn: $viewModel.subscription.isActive)
                                .foregroundColor(Color("TextLight"))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white))
                        
                        // Delete button
                        Button(role: .destructive) {
                            viewModel.delete()
                            dismiss()
                        } label: {
                            Text("Delete")
                                .frame(maxWidth: .infinity)
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white))
                    }
                    .padding()
                }
            }
            .sheet(isPresented: $showAppSheet) {
                AppPickerSheet(
                    isPresented: $showAppSheet,
                    selectedApp: $viewModel.subscription.appName,
                    apps: allApps
                )
            }
            .sheet(isPresented: $showAmountSheet) {
                AmountPickerSheet(
                    isPresented: $showAmountSheet,
                    amount: $viewModel.subscription.amount,
                )
            }
            .sheet(isPresented: $showCategorySheet) {
                CategoryPickerSheet(
                    isPresented: $showCategorySheet,
                    selectedCategory: $viewModel.subscription.category,
                    categories: allCategories
                )
            }
            .sheet(isPresented: $showFrequencySheet) {
                FrequencyPickerSheet(
                    isPresented: $showFrequencySheet,
                    selectedFrequency: $viewModel.subscription.frequency,
                    frequencies: allFrequencies
                )
            }
            .sheet(isPresented: $showReminderSheet) {
                ReminderPickerSheet(
                    isPresented: $showReminderSheet,
                    selectedReminder: $viewModel.subscription.remindMe,
                    reminders: allReminders
                )
            }
            .navigationTitle("Edit Subscription")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image("back-button")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        viewModel.save()
                        dismiss()
                    }
                    .foregroundStyle(Color("AppBlue"))
                }
            }
        }
    }
}
